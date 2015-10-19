#Take care of SELinux.
include_recipe 'selinux::permissive'

#Chunks
include_recipe 'server_info_page::add'
