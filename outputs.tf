output "containers_id" {
  description = "Map of id values across all containers, keyed the same as var.containers except keys with no id are omitted"
  value       = { for k, v in docker_container.containers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "containers_attach" {
  description = "Map of attach values across all containers, keyed the same as var.containers except keys with no attach are omitted"
  value       = { for k, v in docker_container.containers : k => v.attach if v.attach != null }
}
output "containers_bridge" {
  description = "Map of bridge values across all containers, keyed the same as var.containers except keys with no bridge are omitted"
  value       = { for k, v in docker_container.containers : k => v.bridge if v.bridge != null && length(v.bridge) > 0 }
}
output "containers_capabilities" {
  description = "Map of capabilities values across all containers, keyed the same as var.containers except keys with no capabilities are omitted"
  value       = { for k, v in docker_container.containers : k => one(v.capabilities) if v.capabilities != null && length(v.capabilities) > 0 }
}
output "containers_cgroup_parent" {
  description = "Map of cgroup_parent values across all containers, keyed the same as var.containers except keys with no cgroup_parent are omitted"
  value       = { for k, v in docker_container.containers : k => v.cgroup_parent if v.cgroup_parent != null && length(v.cgroup_parent) > 0 }
}
output "containers_cgroupns_mode" {
  description = "Map of cgroupns_mode values across all containers, keyed the same as var.containers except keys with no cgroupns_mode are omitted"
  value       = { for k, v in docker_container.containers : k => v.cgroupns_mode if v.cgroupns_mode != null && length(v.cgroupns_mode) > 0 }
}
output "containers_command" {
  description = "Map of command values across all containers, keyed the same as var.containers except keys with no command are omitted"
  value       = { for k, v in docker_container.containers : k => v.command if v.command != null && length(v.command) > 0 }
}
output "containers_container_logs" {
  description = "Map of container_logs values across all containers, keyed the same as var.containers except keys with no container_logs are omitted"
  value       = { for k, v in docker_container.containers : k => v.container_logs if v.container_logs != null && length(v.container_logs) > 0 }
}
output "containers_container_read_refresh_timeout_milliseconds" {
  description = "Map of container_read_refresh_timeout_milliseconds values across all containers, keyed the same as var.containers except keys with no container_read_refresh_timeout_milliseconds are omitted"
  value       = { for k, v in docker_container.containers : k => v.container_read_refresh_timeout_milliseconds if v.container_read_refresh_timeout_milliseconds != null }
}
output "containers_cpu_period" {
  description = "Map of cpu_period values across all containers, keyed the same as var.containers except keys with no cpu_period are omitted"
  value       = { for k, v in docker_container.containers : k => v.cpu_period if v.cpu_period != null }
}
output "containers_cpu_quota" {
  description = "Map of cpu_quota values across all containers, keyed the same as var.containers except keys with no cpu_quota are omitted"
  value       = { for k, v in docker_container.containers : k => v.cpu_quota if v.cpu_quota != null }
}
output "containers_cpu_set" {
  description = "Map of cpu_set values across all containers, keyed the same as var.containers except keys with no cpu_set are omitted"
  value       = { for k, v in docker_container.containers : k => v.cpu_set if v.cpu_set != null && length(v.cpu_set) > 0 }
}
output "containers_cpu_shares" {
  description = "Map of cpu_shares values across all containers, keyed the same as var.containers except keys with no cpu_shares are omitted"
  value       = { for k, v in docker_container.containers : k => v.cpu_shares if v.cpu_shares != null }
}
output "containers_cpus" {
  description = "Map of cpus values across all containers, keyed the same as var.containers except keys with no cpus are omitted"
  value       = { for k, v in docker_container.containers : k => v.cpus if v.cpus != null && length(v.cpus) > 0 }
}
output "containers_destroy_grace_seconds" {
  description = "Map of destroy_grace_seconds values across all containers, keyed the same as var.containers except keys with no destroy_grace_seconds are omitted"
  value       = { for k, v in docker_container.containers : k => v.destroy_grace_seconds if v.destroy_grace_seconds != null }
}
output "containers_device_cgroup_rules" {
  description = "Map of device_cgroup_rules values across all containers, keyed the same as var.containers except keys with no device_cgroup_rules are omitted"
  value       = { for k, v in docker_container.containers : k => v.device_cgroup_rules if v.device_cgroup_rules != null && length(v.device_cgroup_rules) > 0 }
}
output "containers_device_read_bps" {
  description = "Map of device_read_bps values across all containers, keyed the same as var.containers except keys with no device_read_bps are omitted"
  value       = { for k, v in docker_container.containers : k => v.device_read_bps if v.device_read_bps != null && length(v.device_read_bps) > 0 }
}
output "containers_device_read_iops" {
  description = "Map of device_read_iops values across all containers, keyed the same as var.containers except keys with no device_read_iops are omitted"
  value       = { for k, v in docker_container.containers : k => v.device_read_iops if v.device_read_iops != null && length(v.device_read_iops) > 0 }
}
output "containers_device_requests" {
  description = "Map of device_requests values across all containers, keyed the same as var.containers except keys with no device_requests are omitted"
  value       = { for k, v in docker_container.containers : k => v.device_requests if v.device_requests != null && length(v.device_requests) > 0 }
}
output "containers_device_write_bps" {
  description = "Map of device_write_bps values across all containers, keyed the same as var.containers except keys with no device_write_bps are omitted"
  value       = { for k, v in docker_container.containers : k => v.device_write_bps if v.device_write_bps != null && length(v.device_write_bps) > 0 }
}
output "containers_device_write_iops" {
  description = "Map of device_write_iops values across all containers, keyed the same as var.containers except keys with no device_write_iops are omitted"
  value       = { for k, v in docker_container.containers : k => v.device_write_iops if v.device_write_iops != null && length(v.device_write_iops) > 0 }
}
output "containers_devices" {
  description = "Map of devices values across all containers, keyed the same as var.containers except keys with no devices are omitted"
  value       = { for k, v in docker_container.containers : k => v.devices if v.devices != null && length(v.devices) > 0 }
}
output "containers_dns" {
  description = "Map of dns values across all containers, keyed the same as var.containers except keys with no dns are omitted"
  value       = { for k, v in docker_container.containers : k => v.dns if v.dns != null && length(v.dns) > 0 }
}
output "containers_dns_opts" {
  description = "Map of dns_opts values across all containers, keyed the same as var.containers except keys with no dns_opts are omitted"
  value       = { for k, v in docker_container.containers : k => v.dns_opts if v.dns_opts != null && length(v.dns_opts) > 0 }
}
output "containers_dns_search" {
  description = "Map of dns_search values across all containers, keyed the same as var.containers except keys with no dns_search are omitted"
  value       = { for k, v in docker_container.containers : k => v.dns_search if v.dns_search != null && length(v.dns_search) > 0 }
}
output "containers_domainname" {
  description = "Map of domainname values across all containers, keyed the same as var.containers except keys with no domainname are omitted"
  value       = { for k, v in docker_container.containers : k => v.domainname if v.domainname != null && length(v.domainname) > 0 }
}
output "containers_entrypoint" {
  description = "Map of entrypoint values across all containers, keyed the same as var.containers except keys with no entrypoint are omitted"
  value       = { for k, v in docker_container.containers : k => v.entrypoint if v.entrypoint != null && length(v.entrypoint) > 0 }
}
output "containers_env" {
  description = "Map of env values across all containers, keyed the same as var.containers except keys with no env are omitted"
  value       = { for k, v in docker_container.containers : k => v.env if v.env != null && length(v.env) > 0 }
}
output "containers_exit_code" {
  description = "Map of exit_code values across all containers, keyed the same as var.containers except keys with no exit_code are omitted"
  value       = { for k, v in docker_container.containers : k => v.exit_code if v.exit_code != null }
}
output "containers_gpus" {
  description = "Map of gpus values across all containers, keyed the same as var.containers except keys with no gpus are omitted"
  value       = { for k, v in docker_container.containers : k => v.gpus if v.gpus != null && length(v.gpus) > 0 }
}
output "containers_group_add" {
  description = "Map of group_add values across all containers, keyed the same as var.containers except keys with no group_add are omitted"
  value       = { for k, v in docker_container.containers : k => v.group_add if v.group_add != null && length(v.group_add) > 0 }
}
output "containers_healthcheck" {
  description = "Map of healthcheck values across all containers, keyed the same as var.containers except keys with no healthcheck are omitted"
  value       = { for k, v in docker_container.containers : k => one(v.healthcheck) if v.healthcheck != null && length(v.healthcheck) > 0 }
}
output "containers_host" {
  description = "Map of host values across all containers, keyed the same as var.containers except keys with no host are omitted"
  value       = { for k, v in docker_container.containers : k => v.host if v.host != null && length(v.host) > 0 }
}
output "containers_hostname" {
  description = "Map of hostname values across all containers, keyed the same as var.containers except keys with no hostname are omitted"
  value       = { for k, v in docker_container.containers : k => v.hostname if v.hostname != null && length(v.hostname) > 0 }
}
output "containers_image" {
  description = "Map of image values across all containers, keyed the same as var.containers except keys with no image are omitted"
  value       = { for k, v in docker_container.containers : k => v.image if v.image != null && length(v.image) > 0 }
}
output "containers_init" {
  description = "Map of init values across all containers, keyed the same as var.containers except keys with no init are omitted"
  value       = { for k, v in docker_container.containers : k => v.init if v.init != null }
}
output "containers_ipc_mode" {
  description = "Map of ipc_mode values across all containers, keyed the same as var.containers except keys with no ipc_mode are omitted"
  value       = { for k, v in docker_container.containers : k => v.ipc_mode if v.ipc_mode != null && length(v.ipc_mode) > 0 }
}
output "containers_labels" {
  description = "Map of labels values across all containers, keyed the same as var.containers except keys with no labels are omitted"
  value       = { for k, v in docker_container.containers : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "containers_log_driver" {
  description = "Map of log_driver values across all containers, keyed the same as var.containers except keys with no log_driver are omitted"
  value       = { for k, v in docker_container.containers : k => v.log_driver if v.log_driver != null && length(v.log_driver) > 0 }
}
output "containers_log_opts" {
  description = "Map of log_opts values across all containers, keyed the same as var.containers except keys with no log_opts are omitted"
  value       = { for k, v in docker_container.containers : k => v.log_opts if v.log_opts != null && length(v.log_opts) > 0 }
}
output "containers_logs" {
  description = "Map of logs values across all containers, keyed the same as var.containers except keys with no logs are omitted"
  value       = { for k, v in docker_container.containers : k => v.logs if v.logs != null }
}
output "containers_max_retry_count" {
  description = "Map of max_retry_count values across all containers, keyed the same as var.containers except keys with no max_retry_count are omitted"
  value       = { for k, v in docker_container.containers : k => v.max_retry_count if v.max_retry_count != null }
}
output "containers_memory" {
  description = "Map of memory values across all containers, keyed the same as var.containers except keys with no memory are omitted"
  value       = { for k, v in docker_container.containers : k => v.memory if v.memory != null }
}
output "containers_memory_reservation" {
  description = "Map of memory_reservation values across all containers, keyed the same as var.containers except keys with no memory_reservation are omitted"
  value       = { for k, v in docker_container.containers : k => v.memory_reservation if v.memory_reservation != null }
}
output "containers_memory_swap" {
  description = "Map of memory_swap values across all containers, keyed the same as var.containers except keys with no memory_swap are omitted"
  value       = { for k, v in docker_container.containers : k => v.memory_swap if v.memory_swap != null }
}
output "containers_mounts" {
  description = "Map of mounts values across all containers, keyed the same as var.containers except keys with no mounts are omitted"
  value       = { for k, v in docker_container.containers : k => v.mounts if v.mounts != null && length(v.mounts) > 0 }
}
output "containers_must_run" {
  description = "Map of must_run values across all containers, keyed the same as var.containers except keys with no must_run are omitted"
  value       = { for k, v in docker_container.containers : k => v.must_run if v.must_run != null }
}
output "containers_name" {
  description = "Map of name values across all containers, keyed the same as var.containers except keys with no name are omitted"
  value       = { for k, v in docker_container.containers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "containers_network_data" {
  description = "Map of network_data values across all containers, keyed the same as var.containers except keys with no network_data are omitted"
  value       = { for k, v in docker_container.containers : k => v.network_data if v.network_data != null && length(v.network_data) > 0 }
}
output "containers_network_mode" {
  description = "Map of network_mode values across all containers, keyed the same as var.containers except keys with no network_mode are omitted"
  value       = { for k, v in docker_container.containers : k => v.network_mode if v.network_mode != null && length(v.network_mode) > 0 }
}
output "containers_networks_advanced" {
  description = "Map of networks_advanced values across all containers, keyed the same as var.containers except keys with no networks_advanced are omitted"
  value       = { for k, v in docker_container.containers : k => v.networks_advanced if v.networks_advanced != null && length(v.networks_advanced) > 0 }
}
output "containers_pid_mode" {
  description = "Map of pid_mode values across all containers, keyed the same as var.containers except keys with no pid_mode are omitted"
  value       = { for k, v in docker_container.containers : k => v.pid_mode if v.pid_mode != null && length(v.pid_mode) > 0 }
}
output "containers_platform" {
  description = "Map of platform values across all containers, keyed the same as var.containers except keys with no platform are omitted"
  value       = { for k, v in docker_container.containers : k => v.platform if v.platform != null && length(v.platform) > 0 }
}
output "containers_ports" {
  description = "Map of ports values across all containers, keyed the same as var.containers except keys with no ports are omitted"
  value       = { for k, v in docker_container.containers : k => v.ports if v.ports != null && length(v.ports) > 0 }
}
output "containers_privileged" {
  description = "Map of privileged values across all containers, keyed the same as var.containers except keys with no privileged are omitted"
  value       = { for k, v in docker_container.containers : k => v.privileged if v.privileged != null }
}
output "containers_publish_all_ports" {
  description = "Map of publish_all_ports values across all containers, keyed the same as var.containers except keys with no publish_all_ports are omitted"
  value       = { for k, v in docker_container.containers : k => v.publish_all_ports if v.publish_all_ports != null }
}
output "containers_read_only" {
  description = "Map of read_only values across all containers, keyed the same as var.containers except keys with no read_only are omitted"
  value       = { for k, v in docker_container.containers : k => v.read_only if v.read_only != null }
}
output "containers_remove_volumes" {
  description = "Map of remove_volumes values across all containers, keyed the same as var.containers except keys with no remove_volumes are omitted"
  value       = { for k, v in docker_container.containers : k => v.remove_volumes if v.remove_volumes != null }
}
output "containers_restart" {
  description = "Map of restart values across all containers, keyed the same as var.containers except keys with no restart are omitted"
  value       = { for k, v in docker_container.containers : k => v.restart if v.restart != null && length(v.restart) > 0 }
}
output "containers_rm" {
  description = "Map of rm values across all containers, keyed the same as var.containers except keys with no rm are omitted"
  value       = { for k, v in docker_container.containers : k => v.rm if v.rm != null }
}
output "containers_runtime" {
  description = "Map of runtime values across all containers, keyed the same as var.containers except keys with no runtime are omitted"
  value       = { for k, v in docker_container.containers : k => v.runtime if v.runtime != null && length(v.runtime) > 0 }
}
output "containers_security_opts" {
  description = "Map of security_opts values across all containers, keyed the same as var.containers except keys with no security_opts are omitted"
  value       = { for k, v in docker_container.containers : k => v.security_opts if v.security_opts != null && length(v.security_opts) > 0 }
}
output "containers_shm_size" {
  description = "Map of shm_size values across all containers, keyed the same as var.containers except keys with no shm_size are omitted"
  value       = { for k, v in docker_container.containers : k => v.shm_size if v.shm_size != null }
}
output "containers_start" {
  description = "Map of start values across all containers, keyed the same as var.containers except keys with no start are omitted"
  value       = { for k, v in docker_container.containers : k => v.start if v.start != null }
}
output "containers_stdin_open" {
  description = "Map of stdin_open values across all containers, keyed the same as var.containers except keys with no stdin_open are omitted"
  value       = { for k, v in docker_container.containers : k => v.stdin_open if v.stdin_open != null }
}
output "containers_stop_signal" {
  description = "Map of stop_signal values across all containers, keyed the same as var.containers except keys with no stop_signal are omitted"
  value       = { for k, v in docker_container.containers : k => v.stop_signal if v.stop_signal != null && length(v.stop_signal) > 0 }
}
output "containers_stop_timeout" {
  description = "Map of stop_timeout values across all containers, keyed the same as var.containers except keys with no stop_timeout are omitted"
  value       = { for k, v in docker_container.containers : k => v.stop_timeout if v.stop_timeout != null }
}
output "containers_storage_opts" {
  description = "Map of storage_opts values across all containers, keyed the same as var.containers except keys with no storage_opts are omitted"
  value       = { for k, v in docker_container.containers : k => v.storage_opts if v.storage_opts != null && length(v.storage_opts) > 0 }
}
output "containers_sysctls" {
  description = "Map of sysctls values across all containers, keyed the same as var.containers except keys with no sysctls are omitted"
  value       = { for k, v in docker_container.containers : k => v.sysctls if v.sysctls != null && length(v.sysctls) > 0 }
}
output "containers_tmpfs" {
  description = "Map of tmpfs values across all containers, keyed the same as var.containers except keys with no tmpfs are omitted"
  value       = { for k, v in docker_container.containers : k => v.tmpfs if v.tmpfs != null && length(v.tmpfs) > 0 }
}
output "containers_tty" {
  description = "Map of tty values across all containers, keyed the same as var.containers except keys with no tty are omitted"
  value       = { for k, v in docker_container.containers : k => v.tty if v.tty != null }
}
output "containers_ulimit" {
  description = "Map of ulimit values across all containers, keyed the same as var.containers except keys with no ulimit are omitted"
  value       = { for k, v in docker_container.containers : k => v.ulimit if v.ulimit != null && length(v.ulimit) > 0 }
}
output "containers_upload" {
  description = "Map of upload values across all containers, keyed the same as var.containers except keys with no upload are omitted"
  value       = { for k, v in docker_container.containers : k => v.upload if v.upload != null && length(v.upload) > 0 }
}
output "containers_user" {
  description = "Map of user values across all containers, keyed the same as var.containers except keys with no user are omitted"
  value       = { for k, v in docker_container.containers : k => v.user if v.user != null && length(v.user) > 0 }
}
output "containers_userns_mode" {
  description = "Map of userns_mode values across all containers, keyed the same as var.containers except keys with no userns_mode are omitted"
  value       = { for k, v in docker_container.containers : k => v.userns_mode if v.userns_mode != null && length(v.userns_mode) > 0 }
}
output "containers_volumes" {
  description = "Map of volumes values across all containers, keyed the same as var.containers except keys with no volumes are omitted"
  value       = { for k, v in docker_container.containers : k => v.volumes if v.volumes != null && length(v.volumes) > 0 }
}
output "containers_wait" {
  description = "Map of wait values across all containers, keyed the same as var.containers except keys with no wait are omitted"
  value       = { for k, v in docker_container.containers : k => v.wait if v.wait != null }
}
output "containers_wait_timeout" {
  description = "Map of wait_timeout values across all containers, keyed the same as var.containers except keys with no wait_timeout are omitted"
  value       = { for k, v in docker_container.containers : k => v.wait_timeout if v.wait_timeout != null }
}
output "containers_working_dir" {
  description = "Map of working_dir values across all containers, keyed the same as var.containers except keys with no working_dir are omitted"
  value       = { for k, v in docker_container.containers : k => v.working_dir if v.working_dir != null && length(v.working_dir) > 0 }
}

