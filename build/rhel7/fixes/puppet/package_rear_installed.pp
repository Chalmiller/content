# platform = multi_platform_all
# complexity = low
# reboot = false
# disruption = low
# strategy = enable
include install_rear

class install_rear {
  package { 'rear':
    ensure => 'installed',
  }
}