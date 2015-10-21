name               'mongodb'
version            '0.3.0'

maintainer         'Josh Wisely'
maintainer_email   'joshwisely@gmail.com'

description        'Installs and configures MongoDB.'
long_description    IO.read(File.join(File.dirname(__FILE__), 'README.md'))

supports           'centos', ">= 7.0"
supports           'rhel', ">= 7.0"

depends            'yum', '~> 3.8.1'
depends            'selinux', '~> 0.9.0'
depends            'firewalld', '~> 1.1.1'
depends            'server_info_page', '~> 0.3.0'
