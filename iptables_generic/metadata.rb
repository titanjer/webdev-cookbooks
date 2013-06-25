name              "iptables_generic"
maintainer        "Mikhail Kolesnik"
maintainer_email  "mike@openbunker.org"
description       "Sets default policies and basic Linux firewall rules"
version           "0.0.1"

recipe "iptables_generic", "Sets default policies and basic Linux firewall rules."

depends 'simple_iptables'

attribute "iptables_generic/ssh_ports",
  :display_name => "SSH port numbers",
  :type => "array",
  :default => [22]

attribute "iptables_generic/whitelist_ports",
  :display_name => "extra port numbers to open",
  :type => "array",
  :default => []

attribute "iptables_generic/whitelist_src_addr",
  :display_name => "IP address sources to allow connections from",
  :type => "array",
  :default => []
