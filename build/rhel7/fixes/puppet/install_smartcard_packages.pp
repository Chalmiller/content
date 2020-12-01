# platform = multi_platform_all
# complexity = low
# reboot = false
# disruption = low
# strategy = enable
include install_pam_pkcs11

class install_pam_pkcs11 {
  package { 'pam_pkcs11':
    ensure => 'installed',
  }
}