#Add the MongoDB repository
yum_repository 'mongodo' do
  description "MongoDB Repository"
  baseurl "https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.0/x86_64/"
  gpgcheck :false
  action :create
end

#MongoDB daemon and associated configuration and init scripts.
package "mongodb-org-server" do
  action :install

#MondoDB mongos daemon.
package "mongodb-org-mongos" do
  action :install

#MongoDB shell.
package "mongodb-org-shell" do
  action :install

#MongoDB tools.
package "mongodb-org-tools" do
  action :install
