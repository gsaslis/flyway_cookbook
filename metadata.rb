name 'flyway'
maintainer 'base2Services'
maintainer_email 'a.walker@base2services.com'
license 'Apache License, Version 2.0'
description 'Installs and configures flywaydb a database migration tool'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.2'

supports 'amazon'
supports 'centos'
supports 'redhat'
supports 'debian'
supports 'fedora'
supports 'ubuntu'

depends 'ark'
depends 'mysql'
