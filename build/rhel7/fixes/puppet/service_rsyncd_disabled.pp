# platform = multi_platform_all
# complexity = low
# reboot = false
# disruption = low
# strategy = enable
include disable_rsyncd

class disable_rsyncd {
  service {'rsyncd':
    enable => false,
    ensure => 'stopped',
  }
}