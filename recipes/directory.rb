directory '/var/www/html/test' do
owner 'ec2-user'
group 'root'
mode '0755'
action :create
end
