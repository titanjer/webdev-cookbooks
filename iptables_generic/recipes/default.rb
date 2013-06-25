simple_iptables_policy "INPUT" do
  policy "DROP"
end

simple_iptables_policy "FORWARD" do
  policy "DROP"
end

simple_iptables_policy "OUTPUT" do
  policy "ACCEPT"
end


simple_iptables_rule "ICMP" do
  rule [
    "-p icmp -m icmp --icmp-type 8 -m limit --limit 10/sec",
    "-p icmp -m icmp --icmp-type 0 -m limit --limit 10/sec",
    "-p icmp -m limit --limit 15/sec"
  ]
  jump "ACCEPT"
end

simple_iptables_rule "SYSTEM" do
  rule "-m conntrack --ctstate ESTABLISHED,RELATED"
  jump "ACCEPT"
end

simple_iptables_rule "SYSTEM" do
  rule [
    "--in-interface lo",
    "-d 127.0.0.1/32"
  ]
  jump "ACCEPT"
end

node['iptables_generic']['ssh_ports'].each do |port|
  simple_iptables_rule "SYSTEM" do
    rule "--proto tcp --dport #{port}"
    jump "ACCEPT"
  end
end

node['iptables_generic']['whitelist_ports'].each do |port|
  simple_iptables_rule "WHITELIST" do
    rule "--proto tcp --dport #{port}"
    jump "ACCEPT"
  end
end

node['iptables_generic']['whitelist_src_addr'].each do |addr|
  simple_iptables_rule "WHITELIST" do
    rule "-s #{addr}"
    jump "ACCEPT"
  end
end
