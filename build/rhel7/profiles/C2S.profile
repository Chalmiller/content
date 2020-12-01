description: 'This profile demonstrates compliance against the

    U.S. Government Commercial Cloud Services (C2S) baseline.


    This baseline was inspired by the Center for Internet Security

    (CIS) Red Hat Enterprise Linux 7 Benchmark, v2.1.1 - 01-31-2017.


    For the SCAP Security Guide project to remain in compliance with

    CIS'' terms and conditions, specifically Restrictions(8), note

    there is no representation or claim that the C2S profile will

    ensure a system is in compliance or consistency with the CIS

    baseline.'
documentation_complete: true
reference: null
selections: [account_disable_post_pw_expiration, accounts_maximum_age_login_defs,
    accounts_minimum_age_login_defs, accounts_no_uid_except_zero, accounts_password_pam_dcredit,
    accounts_password_pam_lcredit, accounts_password_pam_minlen, accounts_password_pam_retry,
    accounts_password_pam_ucredit, accounts_password_pam_unix_remember, accounts_password_warn_age_login_defs,
    accounts_passwords_pam_faillock_deny, accounts_passwords_pam_faillock_unlock_time,
    accounts_umask_etc_bashrc, accounts_umask_etc_profile, aide_periodic_cron_checking,
    audit_rules_dac_modification_chmod, audit_rules_dac_modification_chown, audit_rules_dac_modification_fchmod,
    audit_rules_dac_modification_fchmodat, audit_rules_dac_modification_fchown, audit_rules_dac_modification_fchownat,
    audit_rules_dac_modification_fremovexattr, audit_rules_dac_modification_fsetxattr,
    audit_rules_dac_modification_lchown, audit_rules_dac_modification_lremovexattr,
    audit_rules_dac_modification_lsetxattr, audit_rules_dac_modification_removexattr,
    audit_rules_dac_modification_setxattr, audit_rules_file_deletion_events_rename,
    audit_rules_file_deletion_events_renameat, audit_rules_file_deletion_events_rmdir,
    audit_rules_file_deletion_events_unlink, audit_rules_file_deletion_events_unlinkat,
    audit_rules_immutable, audit_rules_kernel_module_loading, audit_rules_login_events,
    audit_rules_mac_modification, audit_rules_media_export, audit_rules_networkconfig_modification,
    audit_rules_privileged_commands, audit_rules_session_events, audit_rules_sysadmin_actions,
    audit_rules_time_adjtimex, audit_rules_time_clock_settime, audit_rules_time_settimeofday,
    audit_rules_time_stime, audit_rules_time_watch_localtime, audit_rules_unsuccessful_file_modification_creat,
    audit_rules_unsuccessful_file_modification_ftruncate, audit_rules_unsuccessful_file_modification_open,
    audit_rules_unsuccessful_file_modification_open_by_handle_at, audit_rules_unsuccessful_file_modification_openat,
    audit_rules_unsuccessful_file_modification_truncate, audit_rules_usergroup_modification_group,
    audit_rules_usergroup_modification_gshadow, audit_rules_usergroup_modification_opasswd,
    audit_rules_usergroup_modification_passwd, audit_rules_usergroup_modification_shadow,
    auditd_data_retention_action_mail_acct, auditd_data_retention_admin_space_left_action,
    auditd_data_retention_max_log_file, auditd_data_retention_max_log_file_action,
    banner_etc_issue, dconf_db_up_to_date, dconf_gnome_banner_enabled, dconf_gnome_login_banner_text,
    dir_perms_world_writable_sticky_bits, disable_host_auth, disable_prelink, disable_users_coredumps,
    ensure_gpgcheck_globally_activated, ensure_logrotate_activated, ensure_redhat_gpgkey_installed,
    file_groupowner_cron_d, file_groupowner_cron_daily, file_groupowner_cron_hourly,
    file_groupowner_cron_monthly, file_groupowner_cron_weekly, file_groupowner_crontab,
    file_groupowner_etc_group, file_groupowner_etc_gshadow, file_groupowner_etc_passwd,
    file_groupowner_etc_shadow, file_groupowner_grub2_cfg, file_groupowner_sshd_config,
    file_owner_cron_d, file_owner_cron_daily, file_owner_cron_hourly, file_owner_cron_monthly,
    file_owner_cron_weekly, file_owner_crontab, file_owner_etc_group, file_owner_etc_gshadow,
    file_owner_etc_passwd, file_owner_etc_shadow, file_owner_grub2_cfg, file_owner_sshd_config,
    file_permissions_cron_d, file_permissions_cron_daily, file_permissions_cron_hourly,
    file_permissions_cron_monthly, file_permissions_cron_weekly, file_permissions_crontab,
    file_permissions_etc_group, file_permissions_etc_gshadow, file_permissions_etc_passwd,
    file_permissions_etc_shadow, file_permissions_grub2_cfg, file_permissions_sshd_config,
    file_permissions_unauthorized_sgid, file_permissions_unauthorized_suid, file_permissions_unauthorized_world_writable,
    file_permissions_ungroupowned, grub2_audit_argument, grub2_enable_selinux, grub2_password,
    grub2_uefi_password, kernel_module_cramfs_disabled, kernel_module_dccp_disabled,
    kernel_module_freevxfs_disabled, kernel_module_hfs_disabled, kernel_module_hfsplus_disabled,
    kernel_module_jffs2_disabled, kernel_module_sctp_disabled, kernel_module_squashfs_disabled,
    kernel_module_udf_disabled, mount_option_dev_shm_nodev, mount_option_dev_shm_noexec,
    mount_option_dev_shm_nosuid, mount_option_home_nodev, mount_option_nodev_removable_partitions,
    mount_option_noexec_removable_partitions, mount_option_nosuid_removable_partitions,
    mount_option_tmp_nodev, mount_option_tmp_noexec, mount_option_tmp_nosuid, mount_option_var_tmp_nodev,
    mount_option_var_tmp_noexec, mount_option_var_tmp_nosuid, no_direct_root_logins,
    no_files_unowned_by_user, no_rsh_trust_files, no_shelllogin_for_systemaccounts,
    package_aide_installed, package_mcstrans_removed, package_openldap-servers_removed,
    package_rsh_removed, package_rsyslog_installed, package_setroubleshoot_removed,
    package_talk-server_removed, package_talk_removed, package_tcp_wrappers_installed,
    package_telnet_removed, package_xorg-x11-server-common_removed, package_ypbind_removed,
    package_ypserv_removed, partition_for_home, partition_for_tmp, partition_for_var,
    partition_for_var_log, partition_for_var_log_audit, partition_for_var_tmp, postfix_network_listening_disabled,
    require_singleuser_auth, rsyslog_accept_remote_messages_tcp, rsyslog_accept_remote_messages_udp,
    rsyslog_files_permissions, rsyslog_remote_loghost, security_patches_up_to_date,
    selinux_confinement_of_daemons, selinux_policytype, selinux_state, service_auditd_enabled,
    service_autofs_disabled, service_avahi-daemon_disabled, service_chronyd_or_ntpd_enabled,
    service_crond_enabled, service_cups_disabled, service_dhcpd_disabled, service_dovecot_disabled,
    service_httpd_disabled, service_named_disabled, service_nfs_disabled, service_rexec_disabled,
    service_rhnsd_disabled, service_rlogin_disabled, service_rpcbind_disabled, service_rsh_disabled,
    service_rsyslog_enabled, service_smb_disabled, service_snmpd_disabled, service_squid_disabled,
    service_telnet_disabled, service_tftp_disabled, service_vsftpd_disabled, service_xinetd_disabled,
    set_password_hashing_algorithm_systemauth, sshd_allow_only_protocol2, sshd_disable_empty_passwords,
    sshd_disable_root_login, sshd_do_not_permit_user_env, sshd_enable_warning_banner,
    sshd_enable_x11_forwarding, sshd_set_idle_timeout, sshd_set_keepalive, sshd_set_loglevel_info,
    sshd_set_max_auth_tries, sshd_use_approved_ciphers, sshd_use_approved_macs, sysctl_fs_suid_dumpable,
    sysctl_kernel_exec_shield, sysctl_kernel_randomize_va_space, sysctl_net_ipv4_conf_all_accept_redirects,
    sysctl_net_ipv4_conf_all_accept_source_route, sysctl_net_ipv4_conf_all_log_martians,
    sysctl_net_ipv4_conf_all_rp_filter, sysctl_net_ipv4_conf_all_secure_redirects,
    sysctl_net_ipv4_conf_all_send_redirects, sysctl_net_ipv4_conf_default_accept_redirects,
    sysctl_net_ipv4_conf_default_accept_source_route, sysctl_net_ipv4_conf_default_log_martians,
    sysctl_net_ipv4_conf_default_rp_filter, sysctl_net_ipv4_conf_default_secure_redirects,
    sysctl_net_ipv4_conf_default_send_redirects, sysctl_net_ipv4_icmp_echo_ignore_broadcasts,
    sysctl_net_ipv4_icmp_ignore_bogus_error_responses, sysctl_net_ipv4_ip_forward,
    sysctl_net_ipv4_tcp_syncookies, sysctl_net_ipv6_conf_all_accept_ra, sysctl_net_ipv6_conf_all_accept_redirects,
    sysctl_net_ipv6_conf_all_disable_ipv6, sysctl_net_ipv6_conf_default_accept_ra,
    sysctl_net_ipv6_conf_default_accept_redirects, var_auditd_action_mail_acct=root,
    var_account_disable_post_pw_expiration=30, login_banner_text=usgcb_default, var_accounts_passwords_pam_faillock_deny=5,
    var_accounts_minimum_age_login_defs=7, var_accounts_password_warn_age_login_defs=7,
    var_selinux_policy_name=targeted, var_accounts_maximum_age_login_defs=90, var_accounts_passwords_pam_faillock_unlock_time=900,
    var_password_pam_unix_remember=5, var_auditd_admin_space_left_action=single, var_selinux_state=enforcing,
    var_auditd_max_log_file=6, var_password_pam_minlen=14]
title: C2S for Red Hat Enterprise Linux 7
