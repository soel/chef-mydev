#
# Cookbook Name:: td-agent-private
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "curl" do
  action :install
end

execute "td-agent" do
  command "curl -L http://toolbelt.treasuredata.com/sh/install-ubuntu-precise.sh | sh"
end
