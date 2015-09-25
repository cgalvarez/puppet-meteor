# Class: meteor
# ===========================
#
# Installs Meteor.
#
# Authors
# -------
#
# Carlos Alberto García Álvarez <contact@carlosgarcia.engineer>
#
# Copyright
# ---------
#
# Copyright 2015 Carlos Alberto García Álvarez, unless otherwise noted.
#
# License
# -------
#
# This project is licesend under the GPLv2 license terms.
#

class meteor {
  exec { 'install_meteor':
    command     => '/usr/bin/curl https://install.meteor.com/ | /bin/sh',
    environment => 'HOME=/home/vagrant',
    user        => 'vagrant',
    group       => 'vagrant',
    unless      => '/usr/bin/which meteor',
    timeout     => 600,
  }
}
