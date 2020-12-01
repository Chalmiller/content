# platform = multi_platform_all
# complexity = low
# reboot = false
# disruption = low
# strategy = enable
include install_libselinux

class install_libselinux {
  package { 'libselinux':
    ensure => 'installed',
  }
}