#Take care of SELinux
include_recipe 'selinux::permissive'
include_recipe 'mongodb::mongodb_repo'

#MongoDB daemon and associated configuration and init scripts.
package 'mongodb-org-server' do
  action :install
  version '3.0.7-1.el7'
end

#MondoDB mongos daemon.
package 'mongodb-org-mongos' do
  action :install
  version '3.0.7-1.el7'
end

#MongoDB shell.
package 'mongodb-org-shell' do
  action :install
  version '3.0.7-1.el7'
end

#MongoDB tools.
package 'mongodb-org-tools' do
  action :install
  version '3.0.7-1.el7'
end
