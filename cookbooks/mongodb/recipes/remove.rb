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
%w{mongodb-ord-server mongodb-org-shell mongodo-org-tools mongodb-org-mongos}.each do |pkg|
  package pkg do
    action :remove
  end
end

#Tear down mongod conf file.
file '/etc/mongod.conf'  do
  action :delete
end

