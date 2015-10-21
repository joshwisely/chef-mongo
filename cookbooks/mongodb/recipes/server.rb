#Take care of repo.
include_recipe 'mongodb::repo'

#Install package.
package 'mongodb-org-server' do
  action :install
  version '3.0.7-1.el7'
end

#Setup mongod service.
service 'mongod' do
  action [:start, :enable]
end

#Setup firewalld service.
service 'firewalld' do
  action [:start, :enable]
end

#Configure firewalld.
firewalld_port '27017/tcp' do
  action :add
  zone   'public'
end

#Setup mongod conf file.
template '/etc/mongod.conf'  do
  action :create
  variables(
    :ip_address => node['ipaddress']
  )
  notifies :restart, 'service[mongod]'
end

#Create function to reload systemd stuff.
execute 'systemctl-daemon-reload' do
  command '/bin/systemctl --system daemon-reload'
  action :nothing
end

#Configure mongod init file.
template '/etc/init.d/mongod'  do
  action :create
  mode "0750"
  notifies :run, 'execute[systemctl-daemon-reload]', :immediately
  notifies :restart, 'service[mongod]'
end
