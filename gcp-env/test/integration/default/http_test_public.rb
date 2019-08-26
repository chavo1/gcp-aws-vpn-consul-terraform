#!/usr/bin/env ruby

public_ip = attribute(
  "public_ip",
  description: "server dns"
)

# puts(public_dns_servers_virginia.length)

1.upto(public_ip.length) do |x|
  describe http("http://#{public_ip[x -1]}:8500/ui/gcp-virginia/services") do
    its('status') { should cmp 200 }
  end
  describe http("http://#{public_ip[x -1]}:8500/ui/gcp-virginia/nodes") do
    its('status') { should cmp 200 }
  end
  describe http("http://#{public_ip[x -1]}:8500/ui/gcp-virginia/services/web") do
    its('status') { should cmp 200 }
  end
end
