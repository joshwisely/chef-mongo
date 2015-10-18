#Take care of SELinux.
include_recipe 'selinux::permissive'

#Take care of repo.
include_recipe 'mongodb::repo'

#Install package.
package 'mongodb-org-server' do
  action :install
  version '3.0.7-1.el7'
end

#Setup service.
service "mongod" do
  action [:start, :enable]
end

firewalld_port '27017/tcp' do
  action :add
  zone   'public'
end
