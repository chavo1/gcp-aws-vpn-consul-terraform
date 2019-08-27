#!/usr/bin/env ruby

public_dns_servers_virginia = attribute(
  "public_dns_servers_virginia",
  description: "public dns"
)

public_ip = attribute(
  "public_ip",
  description: "public dns"
)

puts(public_dns_servers_virginia.length)
puts(public_ip.length)

require 'rubygems'
require 'selenium-webdriver'
require 'fileutils'

FileUtils.mkdir_p 'scr/'

1.upto(public_dns_servers_virginia.length) do |x|
  browser = Selenium::WebDriver.for :firefox
  browser.get "http://#{public_dns_servers_virginia[x -1]}:8500/ui/aws-virginia/services"
  sleep 2
  browser.save_screenshot("scr/consul_services_aws_virginia-#{00+x}.png")
  browser.get "http://#{public_dns_servers_virginia[x -1]}:8500/ui/aws-virginia/services/web"
  sleep 2
  browser.save_screenshot("scr/consul_services_aws_virginia_web-#{00+x}.png")
  browser.get "http://#{public_dns_servers_virginia[x -1]}:8500/ui/aws-virginia/nodes"
  sleep 2
  browser.save_screenshot("scr/consul_nodes_aws_virginia-#{00+x}.png")
  browser.quit
end

1.upto(public_ip.length) do |x|
  browser = Selenium::WebDriver.for :firefox
  browser.get "http://#{public_ip[x -1]}:8500/ui/gcp-virginia/services"
  sleep 2
  browser.save_screenshot("scr/consul_services_gcp-virginia-#{00+x}.png")
  browser.get "http://#{public_ip[x -1]}:8500/ui/gcp-virginia/services/web"
  sleep 2
  browser.save_screenshot("scr/consul_services_gcp-virginia_web-#{00+x}.png")
  browser.get "http://#{public_ip[x -1]}:8500/ui/gcp-virginia/nodes"
  sleep 2
  browser.save_screenshot("scr/consul_nodes_gcp-virginia-#{00+x}.png")
  browser.quit
end

