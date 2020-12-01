# platform = multi_platform_all
# complexity = low
# reboot = false
# disruption = low
# strategy = disable
include remove_openldap-clients

class remove_openldap-clients {
  package { 'openldap-clients':
    ensure => 'purged',
  }
}