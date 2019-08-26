public_ip = attribute(
  "public_ip",
  description: "server dns"
)

1.upto(public_ip.length) do |x|
  describe command('terraform state list') do
    its('stdout') { should include "module.consul_servers.google_compute_instance.server[#{x -1}]" }
    its('stderr') { should include '' }
    its('exit_status') { should eq 0 }
  end
end

