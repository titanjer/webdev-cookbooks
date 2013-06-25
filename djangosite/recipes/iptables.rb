node['djangosite']['http_ports'].each do |port|
  simple_iptables_rule "HTTP" do
    rule "--proto tcp --dport #{port}"
    jump "ACCEPT"
  end
end
