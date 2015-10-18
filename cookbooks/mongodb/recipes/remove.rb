#Take care of repo.
include_recipe 'mongodb::repo'

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
