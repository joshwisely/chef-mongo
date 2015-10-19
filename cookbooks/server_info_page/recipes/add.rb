#Install package
package 'httpd' do
  action :install
  version '2.4.6-31.el7.centos.1'
end

#Setup httpd service.
service 'httpd' do
  action [:enable, :start]
end

#Setup firewalld service.
service 'firewalld' do
  action [:start, :enable]
end

#Configure firewalld.
firewalld_service 'http' do
  action :add
  zone   'public'
end

#Setup httpd index file.
template '/var/www/html/index.html' do
  source 'index.html.erb'
end
