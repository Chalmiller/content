# platform = multi_platform_all
# complexity = low
# reboot = false
# disruption = low
# strategy = disable
include remove_krb5-server

class remove_krb5-server {
  package { 'krb5-server':
    ensure => 'purged',
  }
}