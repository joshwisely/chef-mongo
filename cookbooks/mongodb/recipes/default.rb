#Take care of SELinux.
include_recipe 'selinux::permissive'

#Chunks
include_recipe 'mongodb::server'
include_recipe 'mongodb::shell'
include_recipe 'mongodb::tools'
include_recipe 'mongodb::mongos'

