# platform = multi_platform_all
# complexity = low
# reboot = false
# disruption = low
# strategy = enable
include install_chrony

class install_chrony {
  package { 'chrony':
    ensure => 'installed',
  }
}