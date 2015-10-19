#Take care of SELinux.
include_recipe 'selinux::permissive'

#Server info page.
include_recipe 'server_info_page'

#MongoDB chunks.
include_recipe 'mongodb::server'
include_recipe 'mongodb::shell'
include_recipe 'mongodb::tools'
include_recipe 'mongodb::mongos'

