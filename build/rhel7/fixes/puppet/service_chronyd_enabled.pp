# platform = multi_platform_all
# complexity = low
# reboot = false
# disruption = low
# strategy = enable
include enable_chronyd

class enable_chronyd {
  service {'chronyd':
    enable => true,
    ensure => 'running',
  }
}