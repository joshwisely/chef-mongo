#Take care of repo.
include_recipe 'mongodb::repo'

#Tear down mongod service.
service 'mongod' do
  action [:stop, :disable]
end

#Configure firewalld.
firewalld_port '27017/tcp' do
  action :remove
  zone   'public'
end

#Tear down firewalld service.
service 'firewalld' do
  action [:stop, :disable]
end

#Remove packages.
package 'mongodb-org-server' do
  action :remove
end
package 'mongodb-org-shell' do
  action :remove
end
package 'mongodb-org-tools' do
  action :remove
end
package 'mongodb-org-mongos' do
  action :remove
end

#Tear down mongod conf file.
file '/etc/mongod.conf'  do
  action :delete
end

