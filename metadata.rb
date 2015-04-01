name             'flyway'
maintainer       'base2Services'
maintainer_email 'a.walker@base2services.com'
license          'Apache License, Version 2.0'
description      'Allow for use of flywaydb migrations '
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          IO.read(File.join(File.dirname(__FILE__), 'VERSION'))

supports 'amazon'
supports 'centos'
supports 'redhat'
supports 'debian'
supports 'fedora'
supports 'ubuntu'

depends 'ark'
depends 'mysql'
