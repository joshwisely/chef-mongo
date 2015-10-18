#Add the MongoDB repository
  5 yum_repository 'mongodo' do
  6   description 'MongoDB Repository'
  7   baseurl 'https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.0/x86_64/'
  8   gpgcheck FALSE
  9   action :create
 10 end
