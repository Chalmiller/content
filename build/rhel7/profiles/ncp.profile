description: 'This compliance profile reflects the core set of security

    related configuration settings for deployment of Red Hat Enterprise

    Linux 7.x into U.S. Defense, Intelligence, and Civilian agencies.

    Development partners and sponsors include the U.S. National Institute

    of Standards and Technology (NIST), U.S. Department of Defense,

    the National Security Agency, and Red Hat.


    This baseline implements configuration requirements from the following

    sources:


    - Committee on National Security Systems Instruction No. 1253 (CNSSI 1253)

    - NIST Controlled Unclassified Information (NIST 800-171)

    - NIST 800-53 control selections for MODERATE impact systems (NIST 800-53)

    - U.S. Government Configuration Baseline (USGCB)

    - NIAP Protection Profile for General Purpose Operating Systems v4.2.1 (OSPP v4.2.1)

    - DISA Operating System Security Requirements Guide (OS SRG)


    For any differing configuration requirements, e.g. password lengths, the stricter

    security setting was chosen. Security Requirement Traceability Guides (RTMs) and

    sample System Security Configuration Guides are provided via the

    scap-security-guide-docs package.


    This profile reflects U.S. Government consensus content and is developed through

    the OpenSCAP/SCAP Security Guide initiative, championed by the National

    Security Agency. Except for differences in formatting to accommodate

    publishing processes, this profile mirrors OpenSCAP/SCAP Security Guide

    content as minor divergences, such as bugfixes, work through the

    consensus and release processes.'
documentation_complete: true
reference: null
selections: [account_disable_post_pw_expiration, accounts_logon_fail_delay, accounts_max_concurrent_login_sessions,
    accounts_maximum_age_login_defs, accounts_minimum_age_login_defs, accounts_no_uid_except_zero,
    accounts_password_all_shadowed, accounts_password_minlen_login_defs, accounts_password_pam_dcredit,
    accounts_password_pam_difok, accounts_password_pam_lcredit, accounts_password_pam_maxclassrepeat,
    accounts_password_pam_maxrepeat, accounts_password_pam_minclass, accounts_password_pam_minlen,
    accounts_password_pam_ocredit, accounts_password_pam_retry, accounts_password_pam_ucredit,
    accounts_password_pam_unix_remember, accounts_password_warn_age_login_defs, accounts_passwords_pam_faillock_deny,
    accounts_passwords_pam_faillock_deny_root, accounts_passwords_pam_faillock_interval,
    accounts_passwords_pam_faillock_unlock_time, accounts_tmout, accounts_umask_etc_bashrc,
    accounts_umask_etc_csh_cshrc, accounts_umask_etc_login_defs, accounts_umask_etc_profile,
    aide_build_database, aide_periodic_cron_checking, aide_scan_notification, aide_use_fips_hashes,
    aide_verify_acls, aide_verify_ext_attributes, audit_rules_dac_modification_chmod,
    audit_rules_dac_modification_chown, audit_rules_dac_modification_fchmod, audit_rules_dac_modification_fchmodat,
    audit_rules_dac_modification_fchown, audit_rules_dac_modification_fchownat, audit_rules_dac_modification_fremovexattr,
    audit_rules_dac_modification_fsetxattr, audit_rules_dac_modification_lchown, audit_rules_dac_modification_lremovexattr,
    audit_rules_dac_modification_lsetxattr, audit_rules_dac_modification_removexattr,
    audit_rules_dac_modification_setxattr, audit_rules_execution_chcon, audit_rules_execution_restorecon,
    audit_rules_execution_semanage, audit_rules_execution_setsebool, audit_rules_file_deletion_events,
    audit_rules_file_deletion_events_rename, audit_rules_file_deletion_events_renameat,
    audit_rules_file_deletion_events_rmdir, audit_rules_file_deletion_events_unlink,
    audit_rules_file_deletion_events_unlinkat, audit_rules_for_ospp, audit_rules_immutable,
    audit_rules_kernel_module_loading_delete, audit_rules_kernel_module_loading_init,
    audit_rules_login_events_faillock, audit_rules_login_events_lastlog, audit_rules_login_events_tallylog,
    audit_rules_mac_modification, audit_rules_media_export, audit_rules_networkconfig_modification,
    audit_rules_privileged_commands, audit_rules_privileged_commands_chage, audit_rules_privileged_commands_chsh,
    audit_rules_privileged_commands_crontab, audit_rules_privileged_commands_gpasswd,
    audit_rules_privileged_commands_newgrp, audit_rules_privileged_commands_pam_timestamp_check,
    audit_rules_privileged_commands_passwd, audit_rules_privileged_commands_postdrop,
    audit_rules_privileged_commands_postqueue, audit_rules_privileged_commands_ssh_keysign,
    audit_rules_privileged_commands_su, audit_rules_privileged_commands_sudo, audit_rules_privileged_commands_sudoedit,
    audit_rules_privileged_commands_umount, audit_rules_privileged_commands_unix_chkpwd,
    audit_rules_privileged_commands_userhelper, audit_rules_session_events, audit_rules_sysadmin_actions,
    audit_rules_system_shutdown, audit_rules_time_adjtimex, audit_rules_time_clock_settime,
    audit_rules_time_settimeofday, audit_rules_time_stime, audit_rules_time_watch_localtime,
    audit_rules_unsuccessful_file_modification_creat, audit_rules_unsuccessful_file_modification_ftruncate,
    audit_rules_unsuccessful_file_modification_open, audit_rules_unsuccessful_file_modification_open_by_handle_at,
    audit_rules_unsuccessful_file_modification_openat, audit_rules_unsuccessful_file_modification_truncate,
    audit_rules_usergroup_modification_group, audit_rules_usergroup_modification_gshadow,
    audit_rules_usergroup_modification_opasswd, audit_rules_usergroup_modification_passwd,
    audit_rules_usergroup_modification_shadow, auditd_audispd_syslog_plugin_activated,
    auditd_data_retention_action_mail_acct, auditd_data_retention_admin_space_left_action,
    auditd_data_retention_flush, auditd_data_retention_max_log_file, auditd_data_retention_max_log_file_action,
    auditd_data_retention_num_logs, auditd_data_retention_space_left_action, banner_etc_issue,
    chronyd_or_ntpd_specify_multiple_servers, chronyd_or_ntpd_specify_remote_server,
    clean_components_post_updating, configure_opensc_card_drivers, configure_opensc_nss_db,
    dconf_db_up_to_date, dconf_gnome_banner_enabled, dconf_gnome_disable_automount,
    dconf_gnome_disable_automount_open, dconf_gnome_disable_autorun, dconf_gnome_disable_ctrlaltdel_reboot,
    dconf_gnome_disable_geolocation, dconf_gnome_disable_restart_shutdown, dconf_gnome_disable_thumbnailers,
    dconf_gnome_disable_user_admin, dconf_gnome_disable_user_list, dconf_gnome_disable_wifi_create,
    dconf_gnome_disable_wifi_notification, dconf_gnome_enable_smartcard_auth, dconf_gnome_login_banner_text,
    dconf_gnome_login_retries, dconf_gnome_remote_access_credential_prompt, dconf_gnome_remote_access_encryption,
    dconf_gnome_screensaver_idle_activation_enabled, dconf_gnome_screensaver_idle_delay,
    dconf_gnome_screensaver_lock_delay, dconf_gnome_screensaver_lock_enabled, dconf_gnome_screensaver_mode_blank,
    dconf_gnome_screensaver_user_info, dconf_gnome_screensaver_user_locks, dconf_gnome_session_idle_user_locks,
    dir_perms_world_writable_system_owned, disable_ctrlaltdel_burstaction, disable_ctrlaltdel_reboot,
    disable_host_auth, disable_prelink, disable_users_coredumps, display_login_attempts,
    enable_dconf_user_profile, encrypt_partitions, ensure_gpgcheck_globally_activated,
    ensure_gpgcheck_local_packages, ensure_gpgcheck_never_disabled, ensure_redhat_gpgkey_installed,
    file_groupowner_cron_allow, file_groupowner_grub2_cfg, file_owner_cron_allow,
    file_owner_grub2_cfg, file_ownership_var_log_audit, file_permissions_grub2_cfg,
    file_permissions_sshd_private_key, file_permissions_sshd_pub_key, file_permissions_ungroupowned,
    file_permissions_var_log_audit, firewalld_sshd_port_enabled, force_opensc_card_drivers,
    gid_passwd_group_same, gnome_gdm_disable_automatic_login, gnome_gdm_disable_guest_login,
    grub2_audit_argument, grub2_audit_backlog_limit_argument, grub2_disable_interactive_boot,
    grub2_enable_fips_mode, grub2_enable_selinux, grub2_page_poison_argument, grub2_password,
    grub2_slub_debug_argument, grub2_uefi_password, grub2_vsyscall_argument, install_PAE_kernel_on_x86-32,
    install_antivirus, install_hids, installed_OS_is_vendor_supported, kernel_module_bluetooth_disabled,
    kernel_module_cramfs_disabled, kernel_module_dccp_disabled, kernel_module_freevxfs_disabled,
    kernel_module_hfs_disabled, kernel_module_hfsplus_disabled, kernel_module_jffs2_disabled,
    kernel_module_sctp_disabled, kernel_module_squashfs_disabled, kernel_module_usb-storage_disabled,
    ldap_client_start_tls, libreswan_approved_tunnels, mount_option_dev_shm_nodev,
    mount_option_dev_shm_noexec, mount_option_dev_shm_nosuid, mount_option_home_nodev,
    mount_option_home_nosuid, mount_option_krb_sec_remote_filesystems, mount_option_nodev_remote_filesystems,
    mount_option_nodev_removable_partitions, mount_option_noexec_removable_partitions,
    mount_option_nosuid_remote_filesystems, mount_option_nosuid_removable_partitions,
    mount_option_tmp_nodev, mount_option_tmp_noexec, mount_option_tmp_nosuid, mount_option_var_tmp_nodev,
    mount_option_var_tmp_noexec, mount_option_var_tmp_nosuid, network_ipv6_disable_rpc,
    network_ipv6_privacy_extensions, network_sniffer_disabled, no_direct_root_logins,
    no_empty_passwords, no_files_unowned_by_user, no_rsh_trust_files, package_abrt_removed,
    package_aide_installed, package_dracut-fips_installed, package_opensc_installed,
    package_pcsc-lite_installed, package_rsh-server_removed, package_rsh_removed,
    package_screen_installed, package_talk-server_removed, package_talk_removed, package_telnet-server_removed,
    package_telnet_removed, package_xinetd_removed, package_ypbind_removed, package_ypserv_removed,
    require_singleuser_auth, restrict_serial_port_logins, rpm_verify_hashes, rpm_verify_permissions,
    rsyslog_cron_logging, rsyslog_nolisten, rsyslog_remote_loghost, sebool_abrt_anon_write,
    sebool_abrt_handle_event, sebool_abrt_upload_watch_anon_write, sebool_auditadm_exec_content,
    sebool_cron_can_relabel, sebool_cron_system_cronjob_use_shares, sebool_cron_userdomain_transition,
    sebool_daemons_dump_core, sebool_daemons_use_tcp_wrapper, sebool_daemons_use_tty,
    sebool_deny_execmem, sebool_deny_ptrace, sebool_domain_fd_use, sebool_domain_kernel_load_modules,
    sebool_fips_mode, sebool_gpg_web_anon_write, sebool_guest_exec_content, sebool_kerberos_enabled,
    sebool_logadm_exec_content, sebool_logging_syslogd_can_sendmail, sebool_logging_syslogd_use_tty,
    sebool_login_console_enabled, sebool_mmap_low_allowed, sebool_mock_enable_homedirs,
    sebool_mount_anyfile, sebool_polyinstantiation_enabled, sebool_secadm_exec_content,
    sebool_secure_mode, sebool_secure_mode_insmod, sebool_secure_mode_policyload,
    sebool_selinuxuser_direct_dri_enabled, sebool_selinuxuser_execheap, sebool_selinuxuser_execmod,
    sebool_selinuxuser_execstack, sebool_selinuxuser_mysql_connect_enabled, sebool_selinuxuser_ping,
    sebool_selinuxuser_postgresql_connect_enabled, sebool_selinuxuser_rw_noexattrfile,
    sebool_selinuxuser_share_music, sebool_selinuxuser_tcp_server, sebool_selinuxuser_udp_server,
    sebool_selinuxuser_use_ssh_chroot, sebool_ssh_chroot_rw_homedirs, sebool_ssh_keysign,
    sebool_ssh_sysadm_login, sebool_staff_exec_content, sebool_sysadm_exec_content,
    sebool_unconfined_login, sebool_use_ecryptfs_home_dirs, sebool_user_exec_content,
    sebool_xdm_bind_vnc_tcp_port, sebool_xdm_exec_bootloader, sebool_xdm_sysadm_login,
    sebool_xdm_write_home, sebool_xguest_connect_network, sebool_xguest_exec_content,
    sebool_xguest_mount_media, sebool_xguest_use_bluetooth, sebool_xserver_clients_write_xshm,
    sebool_xserver_execmem, sebool_xserver_object_manager, securetty_root_login_console_only,
    security_patches_up_to_date, selinux_all_devicefiles_labeled, selinux_confinement_of_daemons,
    selinux_policytype, selinux_state, service_auditd_enabled, service_autofs_disabled,
    service_bluetooth_disabled, service_chronyd_or_ntpd_enabled, service_crond_enabled,
    service_debug-shell_disabled, service_firewalld_enabled, service_kdump_disabled,
    service_pcscd_enabled, service_rexec_disabled, service_rlogin_disabled, service_rpcbind_disabled,
    service_rsh_disabled, service_sshd_enabled, service_telnet_disabled, service_xinetd_disabled,
    service_ypbind_disabled, service_zebra_disabled, set_firewalld_default_zone, set_password_hashing_algorithm_libuserconf,
    set_password_hashing_algorithm_logindefs, set_password_hashing_algorithm_systemauth,
    sshd_allow_only_protocol2, sshd_disable_compression, sshd_disable_empty_passwords,
    sshd_disable_gssapi_auth, sshd_disable_kerb_auth, sshd_disable_rhosts_rsa, sshd_disable_root_login,
    sshd_do_not_permit_user_env, sshd_enable_strictmodes, sshd_enable_warning_banner,
    sshd_enable_x11_forwarding, sshd_set_idle_timeout, sshd_set_keepalive, sshd_use_approved_ciphers,
    sshd_use_approved_macs, sshd_use_priv_separation, sssd_enable_smartcards, sssd_ssh_known_hosts_timeout,
    sysctl_fs_protected_hardlinks, sysctl_fs_protected_symlinks, sysctl_fs_suid_dumpable,
    sysctl_kernel_dmesg_restrict, sysctl_kernel_exec_shield, sysctl_kernel_kexec_load_disabled,
    sysctl_kernel_kptr_restrict, sysctl_kernel_randomize_va_space, sysctl_kernel_yama_ptrace_scope,
    sysctl_net_ipv4_conf_all_accept_redirects, sysctl_net_ipv4_conf_all_accept_source_route,
    sysctl_net_ipv4_conf_all_log_martians, sysctl_net_ipv4_conf_all_rp_filter, sysctl_net_ipv4_conf_all_secure_redirects,
    sysctl_net_ipv4_conf_all_send_redirects, sysctl_net_ipv4_conf_default_accept_redirects,
    sysctl_net_ipv4_conf_default_accept_source_route, sysctl_net_ipv4_conf_default_log_martians,
    sysctl_net_ipv4_conf_default_rp_filter, sysctl_net_ipv4_conf_default_secure_redirects,
    sysctl_net_ipv4_conf_default_send_redirects, sysctl_net_ipv4_icmp_echo_ignore_broadcasts,
    sysctl_net_ipv4_icmp_ignore_bogus_error_responses, sysctl_net_ipv4_ip_forward,
    sysctl_net_ipv4_tcp_syncookies, sysctl_net_ipv6_conf_all_accept_ra, sysctl_net_ipv6_conf_all_accept_redirects,
    sysctl_net_ipv6_conf_all_accept_source_route, sysctl_net_ipv6_conf_all_disable_ipv6,
    sysctl_net_ipv6_conf_all_forwarding, sysctl_net_ipv6_conf_default_accept_ra, sysctl_net_ipv6_conf_default_accept_redirects,
    sysctl_net_ipv6_conf_default_accept_source_route, use_kerberos_security_all_exports,
    wireless_disable_interfaces, var_password_pam_minclass=4, var_password_pam_maxrepeat=3,
    var_accounts_user_umask=077, var_account_disable_post_pw_expiration=35, var_selinux_policy_name=targeted,
    var_password_pam_ocredit=1, var_password_pam_dcredit=1, var_selinux_state=enforcing,
    var_auditd_flush=data, var_password_pam_minlen=15, sshd_required=yes, var_accounts_passwords_pam_faillock_fail_interval=900,
    var_auditd_max_log_file_action=rotate, var_accounts_fail_delay=4, var_password_pam_difok=8,
    var_accounts_minimum_age_login_defs=7, sysctl_net_ipv4_conf_default_accept_redirects_value=disabled,
    var_accounts_passwords_pam_faillock_unlock_time=never, var_accounts_password_warn_age_login_defs=7,
    var_password_pam_maxclassrepeat=4, sysctl_net_ipv4_tcp_syncookies_value=enabled,
    sysctl_net_ipv4_icmp_echo_ignore_broadcasts_value=enabled, sysctl_net_ipv4_conf_all_accept_redirects_value=disabled,
    var_auditd_num_logs=5, var_password_pam_lcredit=1, var_auditd_action_mail_acct=root,
    var_multiple_time_servers=rhel, var_accounts_maximum_age_login_defs=60, var_accounts_passwords_pam_faillock_deny=3,
    sshd_idle_timeout_value=10_minutes, var_accounts_password_minlen_login_defs=6,
    inactivity_timeout_value=15_minutes, var_auditd_admin_space_left_action=single,
    var_password_pam_retry=3, var_password_pam_ucredit=1, var_accounts_tmout=10_min,
    var_accounts_max_concurrent_login_sessions=10, login_banner_text=usgcb_default,
    var_auditd_space_left_action=email, sysctl_net_ipv4_conf_default_accept_source_route_value=disabled,
    var_password_pam_unix_remember=5, var_smartcard_drivers=cac, var_auditd_max_log_file=6]
title: NIST National Checklist Program Security Guide
