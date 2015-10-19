name               'server_info_page'
version            '0.2.5'

maintainer         'Josh Wisely'
maintainer_email   'joshwisely@gmail.com'

description        'Installs and configures a basic info page.'
long_description    IO.read(File.join(File.dirname(__FILE__), 'README.md'))

supports           'centos', ">= 7.0"
supports           'rhel', ">= 7.0"

depends            'selinux', '~> 0.9.0'
depends            'firewalld', '~> 1.1.1'
