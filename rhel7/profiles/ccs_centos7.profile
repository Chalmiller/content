documentation_complete: true

metadata:
    version: 2.2.0
    SMEs:
        - vojtapolasek
        - yuumasato

reference: https://www.cisecurity.org/cis-benchmarks/#red_hat_linux


title: 'Comcast Security Profile for CentOS7'

description: |-
    Comcast Security Profile for CentOS7

selections:
    - kernel_module_cramfs_disabled
    - kernel_module_freevxfs_disabled
    - kernel_module_jffs2_disabled
    - kernel_module_hfs_disabled
    - kernel_module_hfsplus_disabled
    - kernel_module_squashfs_disabled
    - kernel_module_udf_disabled
    - mount_option_dev_shm_nodev
    - mount_option_dev_shm_nosuid
    # - mount_option_dev_shm_noexec
    - mount_option_nodev_removable_partitions
    - mount_option_nosuid_removable_partitions
    - mount_option_noexec_removable_partitions
    - dir_perms_world_writable_sticky_bits
    - service_autofs_disabled
    - ensure_gpgcheck_globally_activated
    - file_owner_grub2_cfg
    - require_singleuser_auth
    - file_permissions_grub2_cfg
    - disable_users_coredumps
    - sysctl_kernel_randomize_va_space
    - disable_prelink
    # - banner_etc_issue
    - service_tftp_disabled
    - service_xinetd_disabled
    - service_avahi-daemon_disabled
    - service_cups_disabled
    - service_dhcpd_disabled
    - package_openldap-servers_removed
    - service_nfs_disabled
    - service_named_disabled
    - service_vsftpd_disabled
    - service_httpd_disabled
    - service_dovecot_disabled
    - service_smb_disabled
    - service_squid_disabled
    - postfix_network_listening_disabled
    - package_ypserv_removed
    - service_rsh_disabled
    - service_rlogin_disabled
    - service_rexec_disabled
    - postfix_network_listening_disabled
    - package_ypserv_removed
    - package_talk-server_removed
    - service_telnet_disabled
    - service_tftp_disabled
    - package_ypbind_removed
    - package_rsh_removed
    - package_talk_removed
    - package_telnet_removed
    - package_openldap-clients_removed
    - sysctl_net_ipv4_ip_forward
    - sysctl_net_ipv4_conf_all_send_redirects
    - sysctl_net_ipv4_conf_default_send_redirects
    - sysctl_net_ipv4_conf_all_accept_source_route
    - sysctl_net_ipv4_conf_all_accept_redirects
    - sysctl_net_ipv4_conf_all_secure_redirects
    - sysctl_net_ipv4_conf_all_log_martians
    - sysctl_net_ipv4_icmp_echo_ignore_broadcasts
    - sysctl_net_ipv4_icmp_ignore_bogus_error_responses
    - sysctl_net_ipv4_conf_all_rp_filter
    - sysctl_net_ipv4_tcp_syncookies
    - sysctl_net_ipv6_conf_all_accept_redirects
    - sysctl_net_ipv6_conf_default_accept_redirects
    - package_tcp_wrappers_installed
    # - configure_etc_hosts_deny
    - file_owner_etc_hosts_allow
    - file_owner_etc_hosts_deny
    - file_groupowner_etc_hosts_deny
    - kernel_module_dccp_disabled
    - kernel_module_sctp_disabled
    - kernel_module_rds_disabled
    - kernel_module_tipc_disabled
    - package_iptables_installed
    - wireless_disable_interfaces
    - service_rsyslog_enabled
    # - rsyslog_files_permissions
    - package_rsyslog_installed
    # - ensure_logrotate_activated
    - service_crond_enabled
    - file_groupowner_crontab
    - file_groupowner_cron_hourly
    - file_groupowner_cron_daily
    - file_groupowner_cron_weekly
    - file_groupowner_cron_monthly
    - file_groupowner_cron_d
    - file_owner_cron_d
    - file_groupowner_sshd_config
    - sshd_allow_only_protocol2
    - sshd_set_loglevel_info
    - sshd_disable_x11_forwarding
    - sshd_max_auth_tries_value=4
    - sshd_disable_rhosts
    - disable_host_auth
    # - sshd_disable_root_login
    - sshd_disable_empty_passwords
    - sshd_do_not_permit_user_env
    # - sshd_use_approved_macs
    # - sshd_set_idle_timeout
    # - sshd_limit_user_access
    # - sshd_enable_warning_banner
    - accounts_password_pam_retry
    - var_accounts_passwords_pam_faillock_unlock_time=900
    - var_password_pam_unix_remember=5
    - set_password_hashing_algorithm_systemauth
    # - accounts_passwords_pam_faillock_deny
    - no_shelllogin_for_systemaccounts
    - accounts_umask_etc_bashrc
    - accounts_umask_etc_profile
    - file_owner_etc_passwd
    - file_owner_etc_shadow
    - file_owner_etc_group
    - file_owner_etc_gshadow
    - file_owner_backup_etc_passwd
    - file_owner_backup_etc_shadow
    - file_owner_backup_etc_group
    - file_owner_backup_etc_gshadow
    - file_permissions_unauthorized_world_writable
    - no_files_unowned_by_user
    - file_permissions_ungroupowned
    - file_permissions_unauthorized_suid
    - file_permissions_unauthorized_sgid
    - no_legacy_plus_entries_etc_passwd
    - no_legacy_plus_entries_etc_shadow
    - no_legacy_plus_entries_etc_group
    - accounts_no_uid_except_zero
