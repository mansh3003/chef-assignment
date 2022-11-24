bash 'Execute my script' do
user 'root'
cwd '/var/www/html/test'
code <<-EOH
/home/centos/hello.sh
EOH
end
