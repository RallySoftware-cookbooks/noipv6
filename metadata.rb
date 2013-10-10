name             'noipv6'
maintainer       'Rally Software Development Corp'
maintainer_email 'rallysoftware-cookbooks@rallydev.com'
license          'MIT'
description      'Installs/Configures noipv6'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          IO.read(File.join(File.dirname(__FILE__), 'VERSION')) rescue '0.1.0'

recipe           'noipv6', 'Installs/Configures noipv6'


supports 'centos'
