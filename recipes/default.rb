#
# Cookbook:: webserver
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.

include_recipe '::user'
include_recipe '::git'
include_recipe '::access'
include_recipe '::directory'
include_recipe '::bash'
include_recipe '::gitclone'
package 'httpd'

file '/var/www/html/index.html' do
  content "Welcome to Chef Class - cookbooks 11"
end

service 'httpd' do
  action :start
end

log "Welcome to Chef, #{node['devopsschool']['message']}'!" do
  level :info
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
end

cookbook_file '/opt/deploy.sh' do
  source 'deploy.sh'
  action :create
end
