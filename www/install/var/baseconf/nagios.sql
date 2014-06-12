INSERT INTO `nagios_server` (`id`, `name`, `localhost`, `is_default`, `last_restart`, `ns_ip_address`, `ns_activate`, `ns_status`, `init_script`, `monitoring_engine`, `nagios_bin`, `nagiostats_bin`, `nagios_perfdata`, `centreonbroker_cfg_path`, `centreonbroker_module_path`, `ssh_port`, `ssh_private_key`, `init_script_centreontrapd`, `snmp_trapd_path_conf`) VALUES
(1, 'Central', '1', 0, 0, '127.0.0.1', '1', '0', '@MONITORING_INIT_SCRIPT@', 'NAGIOS', '@MONITORING_BINARY@', '@NAGIOSTATS_BINARY@', '@MONITORING_VAR_LOG@/service-perfdata', '', NULL, 22, NULL, '/etc/init.d/centreontrapd', '/etc/snmp/centreon_traps/');

INSERT INTO `cfg_cgi` (`cgi_id`, `cgi_name`, `main_config_file`, `physical_html_path`, `url_html_path`, `nagios_check_command`, `use_authentication`, `default_user_name`, `authorized_for_system_information`, `authorized_for_system_commands`, `authorized_for_configuration_information`, `authorized_for_all_hosts`, `authorized_for_all_host_commands`, `authorized_for_all_services`, `authorized_for_all_service_commands`, `statusmap_background_image`, `default_statusmap_layout`, `statuswrl_include`, `default_statuswrl_layout`, `refresh_rate`, `host_unreachable_sound`, `host_down_sound`, `service_critical_sound`, `service_warning_sound`, `service_unknown_sound`, `ping_syntax`, `cgi_comment`, `cgi_activate`, `instance_id`) VALUES
(NULL, 'CGI.cfg', '@MONITORINGENGINE_ETC@/nagios.cfg', '@INSTALL_DIR_NAGIOS@', '/nagios', '@NAGIOS_PLUGIN@/check_nagios @MONITORING_VAR_LOG@/status.log 5 &#039;@NAGIOS_BINARY@&#039;', '1', 'nagiosadmin', 'nagiosadmin', 'nagiosadmin', 'nagiosadmin', 'nagiosadmin', 'nagiosadmin', 'nagiosadmin', 'nagiosadmin', 'logofullsize.jpg', '4', NULL, '4', 90, NULL, NULL, NULL, NULL, NULL, '/bin/ping -n -c 5 $HOSTADDRESS$', 'Install Nagios TGZ', '1', 1);

INSERT INTO `cfg_nagios` (`nagios_id`, `nagios_name`, `log_file`, `cfg_dir`, `object_cache_file`, `precached_object_file`, `temp_file`, `temp_path`, `status_file`, `check_result_path`, `use_check_result_path`, `max_check_result_file_age`, `p1_file`, `status_update_interval`, `nagios_user`, `nagios_group`, `enable_notifications`, `execute_service_checks`, `accept_passive_service_checks`, `execute_host_checks`, `accept_passive_host_checks`, `enable_event_handlers`, `log_rotation_method`, `log_archive_path`, `check_external_commands`, `external_command_buffer_slots`, `command_check_interval`, `command_file`, `downtime_file`, `comment_file`, `lock_file`, `retain_state_information`, `state_retention_file`, `retention_update_interval`, `use_retained_program_state`, `use_retained_scheduling_info`, `retained_contact_host_attribute_mask`, `retained_contact_service_attribute_mask`, `retained_process_host_attribute_mask`, `retained_process_service_attribute_mask`, `retained_host_attribute_mask`, `retained_service_attribute_mask`, `use_syslog`, `log_notifications`, `log_service_retries`, `log_host_retries`, `log_event_handlers`, `log_initial_states`, `log_external_commands`, `log_passive_checks`, `global_host_event_handler`, `global_service_event_handler`, `sleep_time`, `service_inter_check_delay_method`, `host_inter_check_delay_method`, `service_interleave_factor`, `max_concurrent_checks`, `max_service_check_spread`, `max_host_check_spread`, `check_result_reaper_frequency`, `max_check_result_reaper_time`, `interval_length`, `auto_reschedule_checks`, `auto_rescheduling_interval`, `auto_rescheduling_window`, `use_aggressive_host_checking`, `enable_flap_detection`, `low_service_flap_threshold`, `high_service_flap_threshold`, `low_host_flap_threshold`, `high_host_flap_threshold`, `soft_state_dependencies`, `service_check_timeout`, `host_check_timeout`, `event_handler_timeout`, `notification_timeout`, `ocsp_timeout`, `ochp_timeout`, `perfdata_timeout`, `obsess_over_services`, `ocsp_command`, `obsess_over_hosts`, `ochp_command`, `process_performance_data`, `host_perfdata_command`, `service_perfdata_command`, `host_perfdata_file`, `service_perfdata_file`, `host_perfdata_file_template`, `service_perfdata_file_template`, `host_perfdata_file_mode`, `service_perfdata_file_mode`, `host_perfdata_file_processing_interval`, `service_perfdata_file_processing_interval`, `host_perfdata_file_processing_command`, `service_perfdata_file_processing_command`, `check_for_orphaned_services`, `check_for_orphaned_hosts`, `check_service_freshness`, `service_freshness_check_interval`, `freshness_check_interval`, `check_host_freshness`, `host_freshness_check_interval`, `date_format`, `illegal_object_name_chars`, `illegal_macro_output_chars`, `use_regexp_matching`, `use_true_regexp_matching`, `admin_email`, `admin_pager`, `nagios_comment`, `nagios_activate`, `event_broker_options`, `translate_passive_host_checks`, `nagios_server_id`, `enable_predictive_host_dependency_checks`, `enable_predictive_service_dependency_checks`, `cached_host_check_horizon`, `cached_service_check_horizon`, `passive_host_checks_are_soft`, `use_large_installation_tweaks`, `free_child_process_memory`, `child_processes_fork_twice`, `enable_environment_macros`, `additional_freshness_latency`, `enable_embedded_perl`, `use_embedded_perl_implicitly`, `debug_file`, `debug_level`, `debug_level_opt`, `debug_verbosity`, `max_debug_file_size`, `cfg_file`) VALUES
(1, 'Nagios CFG 1', '@MONITORING_VAR_LOG@/nagios.log', '@MONITORINGENGINE_ETC@', NULL, NULL, '@MONITORING_VAR_LOG@/nagios.tmp', NULL, '@MONITORING_VAR_LOG@/status.log', NULL, '0', NULL, '@EMBEDDED_PERL@', NULL, '@MONITORINGENGINE_USER@', '@MONITORINGENGINE_GROUP@', '1', '1', '1', '2', '2', '1', 'd', '@MONITORING_VAR_LOG@/archives/', '1', NULL, '1s', '@MONITORING_VAR_LOG@/rw/nagios.cmd', NULL, NULL, '@MONITORING_VAR_LOG@/nagios.lock', '1', '@MONITORING_VAR_LOG@/retention.dat', 60, '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, '0', '1', '1', '1', '1', '1', '1', '2', NULL, NULL, '1', 's', NULL, 's', 200, 5, NULL, 5, NULL, 60, '2', NULL, NULL, '0', '0', '25.0', '50.0', '25.0', '50.0', '0', 60, 10, 30, 30, 5, 5, 5, '0', NULL, '2', NULL, '1', NULL, 41, NULL, NULL, NULL, NULL, '2', '2', NULL, NULL, NULL, NULL, '0', '0', '1', NULL, NULL, '2', NULL, 'euro', '~!$%^&amp;*&quot;|&#039;&lt;&gt;?,()=', '`~$^&amp;&quot;|&#039;&lt;&gt;', '2', '2', 'admin@localhost', 'admin', 'Default Nagios.cfg', '1', '-1', NULL, 1, '2', '2', NULL, NULL, NULL, '2', '2', '2', '2', NULL, '2', '2', NULL, 0, '0', '2', NULL, 'nagios.cfg');

INSERT INTO `cfg_resource` (`resource_id`, `resource_name`, `resource_line`, `resource_comment`, `resource_activate`) VALUES
(1, '$USER1$', '@MONITORINGENGINE_PLUGIN@', 'path to the plugins', '1');

INSERT INTO `cfg_resource_instance_relations` (`resource_id`, `instance_id` ) VALUES (1, 1);

INSERT INTO `options` (`key`, `value`) VALUES ('nagios_path_img','@NAGIOS_IMG@');
INSERT INTO `options` (`key`, `value`) VALUES ('monitoring_engine','NAGIOS');
