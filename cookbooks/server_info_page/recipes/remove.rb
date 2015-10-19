#Tear down httpd service.
service 'httpd' do
  action [:stop, :disable]
end

#Configure firewalld.
firewalld_service 'http' do
  action :remove
  zone   'public'
end

#Tear down firewalld service.
service 'firewalld' do
  action [:stop, :disable]
end

#Remove packages.
package 'httpd' do
  action :remove
end

#Tear down httpd index file.
file '/var/www/html/index.html'  do
  action :delete
end
