public_dns_servers_virginia = attribute(
  "public_dns_servers_virginia",
  description: "server dns"
)

public_ip = attribute(
  "public_ip",
  description: "server public ip"
)

1.upto(public_dns_servers_virginia.length) do |x|
  describe command('terraform state list') do
    its('stdout') { should include "module.consul_virginia.aws_instance.server[#{x -1}]" }
    its('stderr') { should include '' }
    its('exit_status') { should eq 0 }
  end
end

1.upto(public_ip.length) do |x|
  describe command('terraform state list') do
    its('stdout') { should include "module.gcp_consul_servers.google_compute_instance.server[#{x -1}]" }
    its('stderr') { should include '' }
    its('exit_status') { should eq 0 }
  end
end
