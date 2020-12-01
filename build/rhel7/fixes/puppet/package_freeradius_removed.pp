# platform = multi_platform_all
# complexity = low
# reboot = false
# disruption = low
# strategy = disable
include remove_freeradius

class remove_freeradius {
  package { 'freeradius':
    ensure => 'purged',
  }
}