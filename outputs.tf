output "containers_id" {
  description = "Map of id values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.id }
}
output "containers_attach" {
  description = "Map of attach values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.attach }
}
output "containers_bridge" {
  description = "Map of bridge values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.bridge }
}
output "containers_capabilities" {
  description = "Map of capabilities values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => one(v.capabilities) }
}
output "containers_cgroup_parent" {
  description = "Map of cgroup_parent values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.cgroup_parent }
}
output "containers_cgroupns_mode" {
  description = "Map of cgroupns_mode values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.cgroupns_mode }
}
output "containers_command" {
  description = "Map of command values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.command }
}
output "containers_container_logs" {
  description = "Map of container_logs values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.container_logs }
}
output "containers_container_read_refresh_timeout_milliseconds" {
  description = "Map of container_read_refresh_timeout_milliseconds values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.container_read_refresh_timeout_milliseconds }
}
output "containers_cpu_period" {
  description = "Map of cpu_period values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.cpu_period }
}
output "containers_cpu_quota" {
  description = "Map of cpu_quota values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.cpu_quota }
}
output "containers_cpu_set" {
  description = "Map of cpu_set values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.cpu_set }
}
output "containers_cpu_shares" {
  description = "Map of cpu_shares values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.cpu_shares }
}
output "containers_cpus" {
  description = "Map of cpus values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.cpus }
}
output "containers_destroy_grace_seconds" {
  description = "Map of destroy_grace_seconds values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.destroy_grace_seconds }
}
output "containers_device_cgroup_rules" {
  description = "Map of device_cgroup_rules values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.device_cgroup_rules }
}
output "containers_device_read_bps" {
  description = "Map of device_read_bps values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.device_read_bps }
}
output "containers_device_read_iops" {
  description = "Map of device_read_iops values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.device_read_iops }
}
output "containers_device_requests" {
  description = "Map of device_requests values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.device_requests }
}
output "containers_device_write_bps" {
  description = "Map of device_write_bps values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.device_write_bps }
}
output "containers_device_write_iops" {
  description = "Map of device_write_iops values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.device_write_iops }
}
output "containers_devices" {
  description = "Map of devices values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.devices }
}
output "containers_dns" {
  description = "Map of dns values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.dns }
}
output "containers_dns_opts" {
  description = "Map of dns_opts values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.dns_opts }
}
output "containers_dns_search" {
  description = "Map of dns_search values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.dns_search }
}
output "containers_domainname" {
  description = "Map of domainname values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.domainname }
}
output "containers_entrypoint" {
  description = "Map of entrypoint values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.entrypoint }
}
output "containers_env" {
  description = "Map of env values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.env }
}
output "containers_exit_code" {
  description = "Map of exit_code values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.exit_code }
}
output "containers_gpus" {
  description = "Map of gpus values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.gpus }
}
output "containers_group_add" {
  description = "Map of group_add values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.group_add }
}
output "containers_healthcheck" {
  description = "Map of healthcheck values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => one(v.healthcheck) }
}
output "containers_host" {
  description = "Map of host values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.host }
}
output "containers_hostname" {
  description = "Map of hostname values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.hostname }
}
output "containers_image" {
  description = "Map of image values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.image }
}
output "containers_init" {
  description = "Map of init values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.init }
}
output "containers_ipc_mode" {
  description = "Map of ipc_mode values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.ipc_mode }
}
output "containers_labels" {
  description = "Map of labels values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.labels }
}
output "containers_log_driver" {
  description = "Map of log_driver values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.log_driver }
}
output "containers_log_opts" {
  description = "Map of log_opts values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.log_opts }
}
output "containers_logs" {
  description = "Map of logs values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.logs }
}
output "containers_max_retry_count" {
  description = "Map of max_retry_count values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.max_retry_count }
}
output "containers_memory" {
  description = "Map of memory values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.memory }
}
output "containers_memory_reservation" {
  description = "Map of memory_reservation values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.memory_reservation }
}
output "containers_memory_swap" {
  description = "Map of memory_swap values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.memory_swap }
}
output "containers_mounts" {
  description = "Map of mounts values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.mounts }
}
output "containers_must_run" {
  description = "Map of must_run values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.must_run }
}
output "containers_name" {
  description = "Map of name values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.name }
}
output "containers_network_data" {
  description = "Map of network_data values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.network_data }
}
output "containers_network_mode" {
  description = "Map of network_mode values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.network_mode }
}
output "containers_networks_advanced" {
  description = "Map of networks_advanced values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.networks_advanced }
}
output "containers_pid_mode" {
  description = "Map of pid_mode values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.pid_mode }
}
output "containers_platform" {
  description = "Map of platform values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.platform }
}
output "containers_ports" {
  description = "Map of ports values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.ports }
}
output "containers_privileged" {
  description = "Map of privileged values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.privileged }
}
output "containers_publish_all_ports" {
  description = "Map of publish_all_ports values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.publish_all_ports }
}
output "containers_read_only" {
  description = "Map of read_only values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.read_only }
}
output "containers_remove_volumes" {
  description = "Map of remove_volumes values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.remove_volumes }
}
output "containers_restart" {
  description = "Map of restart values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.restart }
}
output "containers_rm" {
  description = "Map of rm values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.rm }
}
output "containers_runtime" {
  description = "Map of runtime values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.runtime }
}
output "containers_security_opts" {
  description = "Map of security_opts values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.security_opts }
}
output "containers_shm_size" {
  description = "Map of shm_size values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.shm_size }
}
output "containers_start" {
  description = "Map of start values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.start }
}
output "containers_stdin_open" {
  description = "Map of stdin_open values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.stdin_open }
}
output "containers_stop_signal" {
  description = "Map of stop_signal values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.stop_signal }
}
output "containers_stop_timeout" {
  description = "Map of stop_timeout values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.stop_timeout }
}
output "containers_storage_opts" {
  description = "Map of storage_opts values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.storage_opts }
}
output "containers_sysctls" {
  description = "Map of sysctls values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.sysctls }
}
output "containers_tmpfs" {
  description = "Map of tmpfs values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.tmpfs }
}
output "containers_tty" {
  description = "Map of tty values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.tty }
}
output "containers_ulimit" {
  description = "Map of ulimit values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.ulimit }
}
output "containers_upload" {
  description = "Map of upload values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.upload }
}
output "containers_user" {
  description = "Map of user values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.user }
}
output "containers_userns_mode" {
  description = "Map of userns_mode values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.userns_mode }
}
output "containers_volumes" {
  description = "Map of volumes values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.volumes }
}
output "containers_wait" {
  description = "Map of wait values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.wait }
}
output "containers_wait_timeout" {
  description = "Map of wait_timeout values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.wait_timeout }
}
output "containers_working_dir" {
  description = "Map of working_dir values across all containers, keyed the same as var.containers"
  value       = { for k, v in docker_container.containers : k => v.working_dir }
}

