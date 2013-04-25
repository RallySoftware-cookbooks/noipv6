name             "noipv6"
maintainer       "Tehmasp Chaudhri"
maintainer_email "tchaudhri@rallydev.com"
license          "Apache 2.0"
description      "Installs/Configures noipv6"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "1.0"

recipe           "noipv6", "Installs/Configures noipv6"

%w{ centos fedora oracle debian ubuntu }.each do |os|
  supports os
end
