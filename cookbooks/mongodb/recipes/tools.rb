#Take care of repo.
include_recipe 'mongodb::repo'

#Install package.
package 'mongodb-org-tools' do
  action :install
  version '3.0.7-1.el7'
end

