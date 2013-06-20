name             'noipv6'
maintainer       'Rally Software Development Corp'
maintainer_email 'rallysoftware-cookbooks@rallydev.com'
license          'MIT'
description      'Installs/Configures noipv6'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0'

recipe           'noipv6', 'Installs/Configures noipv6'

%w{ centos fedora oracle debian ubuntu }.each do |os|
  supports os
end
