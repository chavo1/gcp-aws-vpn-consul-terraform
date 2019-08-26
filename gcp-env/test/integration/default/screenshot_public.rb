#!/usr/bin/env ruby

public_ip = attribute(
  "public_ip",
  description: "public dns"
)

puts(public_ip.length)

require 'rubygems'
require 'selenium-webdriver'
require 'fileutils'

FileUtils.mkdir_p 'scr/'

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

