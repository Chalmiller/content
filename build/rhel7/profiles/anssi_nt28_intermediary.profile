description: "Draft profile for ANSSI compliance at the intermediary level. ANSSI\
    \ stands for Agence nationale de la s\xE9curit\xE9 des syst\xE8mes d'information.\
    \ Based on https://www.ssi.gouv.fr/."
documentation_complete: true
reference: null
selections: [ensure_gpgcheck_globally_activated, ensure_gpgcheck_local_packages, ensure_gpgcheck_never_disabled,
    ensure_logrotate_activated, ensure_redhat_gpgkey_installed, file_owner_etc_gshadow,
    file_owner_etc_shadow, file_permissions_etc_group, file_permissions_etc_gshadow,
    file_permissions_etc_passwd, file_permissions_etc_shadow, mount_option_home_nodev,
    mount_option_home_nosuid, mount_option_tmp_nodev, mount_option_tmp_noexec, mount_option_tmp_nosuid,
    mount_option_var_tmp_nodev, mount_option_var_tmp_noexec, mount_option_var_tmp_nosuid,
    no_direct_root_logins, package_dhcp_removed, package_rsyslog_installed, package_sendmail_removed,
    package_telnetd_removed, partition_for_home, partition_for_tmp, partition_for_var,
    partition_for_var_log, partition_for_var_tmp, rsyslog_files_groupownership, rsyslog_files_ownership,
    rsyslog_files_permissions, rsyslog_remote_loghost, security_patches_up_to_date,
    service_rsyslog_enabled, set_password_hashing_algorithm_logindefs, sshd_disable_root_login,
    sudo_remove_no_authenticate, sudo_remove_nopasswd, sysctl_fs_protected_hardlinks,
    sysctl_fs_protected_symlinks, sysctl_fs_suid_dumpable, sysctl_kernel_dmesg_restrict,
    sysctl_kernel_kptr_restrict, sysctl_kernel_perf_event_paranoid, sysctl_kernel_randomize_va_space,
    sysctl_net_ipv4_conf_all_accept_redirects, sysctl_net_ipv4_conf_all_accept_source_route,
    sysctl_net_ipv4_conf_all_log_martians, sysctl_net_ipv4_conf_all_rp_filter, sysctl_net_ipv4_conf_all_secure_redirects,
    sysctl_net_ipv4_conf_all_send_redirects, sysctl_net_ipv4_conf_default_accept_redirects,
    sysctl_net_ipv4_conf_default_accept_source_route, sysctl_net_ipv4_conf_default_rp_filter,
    sysctl_net_ipv4_conf_default_secure_redirects, sysctl_net_ipv4_conf_default_send_redirects,
    sysctl_net_ipv4_icmp_ignore_bogus_error_responses, sysctl_net_ipv4_ip_forward,
    sysctl_net_ipv4_tcp_syncookies, sysctl_net_ipv6_conf_all_accept_redirects, sysctl_net_ipv6_conf_all_accept_source_route,
    sysctl_net_ipv6_conf_default_accept_redirects, sysctl_net_ipv6_conf_default_accept_source_route,
    sysctl_net_ipv4_conf_all_accept_redirects_value=disabled, sysctl_net_ipv4_conf_default_accept_redirects_value=disabled]
title: DRAFT - ANSSI DAT-NT28 (intermediary)
