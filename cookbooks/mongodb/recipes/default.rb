#MongoDB daemon and associated configuration and init scripts.
package "mongodb-org-server"
  action :install

#MondoDB mongos daemon.
package "mongodb-org-mongos"
  action :install

#MongoDB shell.
package "mongodb-org-shell"
  action :install

#MongoDB tools.
package "mongodb-org-tools"
  action :install
