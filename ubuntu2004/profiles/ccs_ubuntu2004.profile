documentation_complete: true

title: 'CIS Ubuntu 20.04 LTS Benchmark'

description: |-
    This baseline aligns to the Center for Internet Security
    Ubuntu 18.04 LTS Benchmark, v1.0.0, released
    08-13-2018.

selections:

    #### 1.1.1.1 Ensure mounting cramfs filesystems is disabled (Scored)
    - kernel_module_cramfs_disabled

    #### 1.1.1.2 Ensure mounting of freevxfs filesystems is limited (Scored)
    - kernel_module_freevxfs_disabled

    #### 1.1.1.3 Ensure mounting of jffs2 filesystems is disabled (Scored)
    - kernel_module_jffs2_disabled

    #### 1.1.1.4 Ensure mounting of hfs filesystems is disabled (Scored)
    - kernel_module_hfs_disabled

    #### 1.1.1.5 Ensure mounting of hfsplus filesystems is disabled (Scored)
    - kernel_module_hfsplus_disabled

    #### 1.1.1.6 Ensure mounting of udf filesystems is disabled (Scored)
    - kernel_module_udf_disabled

    ### 1.1.2 Ensure separate partitions exists for /tmp (Scored)
    - partition_for_tmp

    ### 1.1.3 Ensure nodev option set on /tmp partition (Scored)
    - mount_option_tmp_nodev

    ### 1.1.4 Ensure nosuid option set on /tmp partition (Scored)
    - mount_option_tmp_nosuid

    ### 1.1.5 Ensure separate partition exists for /var (Scored)
    - partition_for_var

    ### 1.1.6 Ensure separate partition exists for /var/tmp (Scored)
    - partition_for_var_tmp

    ### 1.1.7 Ensure nodev option set on /var/tmp partition (Scored)
    - mount_option_var_tmp_nodev

    ### 1.1.8 Ensure nosuid option set on /var/tmp partition (Scored)
    - mount_option_var_tmp_nosuid

    ### 1.1.9 Ensure noexec option set on /var/tmp partition (Scored)
    - mount_option_var_tmp_noexec

    ### 1.1.10 Ensure separate partition exists for /var/log (Scored)
    - partition_for_var_log

    ### 1.1.11 Ensure separate partition exists for /var/log/audit (Scored)
    - partition_for_var_log_audit

    ### 1.1.12 Ensure separate partition exists for /home (Scored)
    - partition_for_home

    ### 1.1.13 Ensure nodev option set on /home partition (Scored)
    - mount_option_home_nodev

    ### 1.1.20 Ensure sticky bit is set on all world-writable directories (Scored)
    - dir_perms_world_writable_sticky_bits

    #### ProcessSizeMax=0
    - coredump_disable_backtraces

    #### Storage=none
    - coredump_disable_storage

    ### 1.6.2 Ensure address space layout randomization (ASLR) is enabled
    - sysctl_kernel_randomize_va_space


    ## 1.8 Ensure updates, patches, and additional security software are installed (Scored)
    - security_patches_up_to_date

    ### 3.5.3 Ensure RDS is disabled (Not Scored)
    - kernel_module_rds_disabled

    ### 3.5.4 Ensure TIPC is disabled (Scored)
    - kernel_module_tipc_disabled

    #### 4.1.1.1 Ensure audit log storage size is configured (Scored)
    - auditd_data_retention_max_log_file

    #### 4.1.1.2 Ensure system is disabled when audit logs are full (Scored)
    - var_auditd_space_left_action=email
    - auditd_data_retention_space_left_action

    ##### action_mail_acct = root
    - var_auditd_action_mail_acct=root
    - auditd_data_retention_action_mail_acct

    ##### admin_space_left_action = halt
    - var_auditd_admin_space_left_action=halt
    - auditd_data_retention_admin_space_left_action

    #### 4.1.1.3 Ensure audit logs are not automatically deleted (Scored)
    - auditd_data_retention_max_log_file_action

    #### 4.1.2 Ensure auditd service is enabled (Scored)
    - service_auditd_enabled

    #### 4.1.3 Ensure auditing for processes that start prior to audit
    ####         is enabled (Scored)
    # NEEDS RULE - grub2_audit_argument

    ### 4.1.4 Ensure events that modify date and time information
    ###       are collected (Scored)
    #### adjtimex
    - audit_rules_time_adjtimex

    ### 4.1.5 Ensure events that modify user/group information are
    ###        collected (Scored)

    ### 4.1.6 Ensure events that modify the system's network
    ###       enironment are collected (Scored)
    - audit_rules_networkconfig_modification

    ### 4.1.7 Ensure events that modify the system's Mandatory
    ###       Access Control are collected (Scored)
    #### -w /etc/selinux/ -p wa
    - audit_rules_mac_modification

    ### 4.1.8 Ensure login and logout events are collected (Scored)
    # NEEDS RULE - audit_rules_login_events_faillock
    # NEEDS RULE - audit_rules_login_events_lastlog

    ### 4.1.9 Ensure session initiation information is collected (Scored)
    - audit_rules_session_events

    ### 4.1.15 Ensure changes to system administration scope
    ###        (sudoers) is collected (Scored)
    - audit_rules_sysadmin_actions

    ### 5.2.3 Ensure SSH LogLevel is set to INFO (Scored)
    - sshd_set_loglevel_info

    ### 5.2.4 Ensure SSH X11 forwarding is diabled (Scored)

    ### 5.2.5 Ensure SSH MaxAuthTries is set to 4 or less (Scored)
    - sshd_max_auth_tries_value=4
    - sshd_set_max_auth_tries

    ### 5.2.6 Ensure SSH IgnoreRhosts is enabled (Scored)
    - sshd_disable_rhosts

    ### 5.2.7 Ensure SSH HostbasedAuthentication is disabled (Scored)
    - disable_host_auth

    ### 5.2.8 Ensure SSH root login is disabled (Scored)
    - sshd_disable_root_login

    ### 5.2.9 Ensure SSH PermitEmptyPasswords is disabled (Scored)
    - sshd_disable_empty_passwords

    ### 5.2.10 Ensure SSH PermitUserEnvironment is disabled (Scored)
    - sshd_do_not_permit_user_env

    ### 5.2.11 Ensure only approved MAC algorithm are used (Scored)

    ### 5.2.12 Ensure SSH Idle Timeout Interval is configured (Scored)
    # ClientAliveInterval 300
    - sshd_idle_timeout_value=5_minutes
    - sshd_set_idle_timeout

    # ClientAliveCountMax 0
    - sshd_set_keepalive

    ### 5.2.13 Ensure SSH LoginGraceTime is set to one minute
    ###        or less (Scored)

    ### 5.2.14 Ensure SSH access is limited (Scored)

    ### 5.2.15 Ensure SSH warning banner is configured (Scored)
    - sshd_enable_warning_banner

    ### 6.1.2 Ensure permissions on /etc/passwd are configured (Scored)
    # chown root:root /etc/passwd
    - file_owner_etc_passwd
    - file_groupowner_etc_passwd

    # chmod 644 /etc/passwd
    - file_permissions_etc_passwd

    ### 6.1.3 Ensure permissions on /etc/shadow are configured (Scored)
    # chown root:root /etc/shadow
    - file_owner_etc_shadow
    - file_groupowner_etc_shadow

    # chmod o-rwx,g-wx /etc/shadow
    - file_permissions_etc_shadow

    ### 6.1.4 Ensure permissions on /etc/group are configured (Scored)
    # chown root:root /etc/group
    - file_owner_etc_group
    - file_groupowner_etc_group

    # chmod 644 /etc/group
    - file_permissions_etc_group

    ### 6.1.5 Ensure permissions on /etc/gshadow are configured (Scored)
    # chown root:root /etc/gshadow
    - file_owner_etc_gshadow
    - file_groupowner_etc_gshadow

    # chmod o-rwx,g-rw /etc/gshadow
    - file_permissions_etc_gshadow

    ### 6.1.6 Ensure permissions on /etc/passwd- are configured (Scored)
    # chown root:root /etc/passwd-
    - file_owner_backup_etc_passwd
    - file_groupowner_backup_etc_passwd

    # chmod 600 /etc/passwd-
    - file_permissions_backup_etc_passwd

    ### 6.1.7 Ensure permissions on /etc/shadow- are configured (Scored)
    # chown root:root /etc/shadow-
    - file_owner_backup_etc_shadow
    - file_groupowner_backup_etc_shadow

    # chmod 0000 /etc/shadow-
    - file_permissions_backup_etc_shadow

    ### 6.1.8 Ensure permissions on /etc/group- are configured (Scored)
    # chown root:root /etc/group-
    - file_owner_backup_etc_group
    - file_groupowner_backup_etc_group

    # chmod 644 /etc/group-
    - file_permissions_backup_etc_group

    ### 6.1.9 Ensure permissions on /etc/gshadow- are configured (Scored)
    # chown root:root /etc/gshadow-
    - file_owner_backup_etc_gshadow
    - file_groupowner_backup_etc_gshadow

    # chmod 0000 /etc/gshadow-
    - file_permissions_backup_etc_gshadow

    ### 6.1.10 Ensure no world writable files exist (Scored)
    - file_permissions_unauthorized_world_writable
