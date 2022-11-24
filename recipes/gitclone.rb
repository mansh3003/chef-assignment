git 'gitclone' do
remote 'origin'
repository 'https://github.com/scmgalaxy/chef-repo'
user 'root'
action :sync
end
