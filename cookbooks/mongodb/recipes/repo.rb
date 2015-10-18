#Add the MongoDB repository
yum_repository 'mongodb' do
  description 'MongoDB Repository'
  baseurl 'https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.0/x86_64/'
  gpgcheck FALSE
  action :create
end
