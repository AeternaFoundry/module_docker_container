resource "docker_container" "containers" {
  for_each = var.containers

  image                                       = each.value.image
  name                                        = each.value.name
  attach                                      = each.value.attach
  cgroup_parent                               = each.value.cgroup_parent
  cgroupns_mode                               = each.value.cgroupns_mode
  command                                     = each.value.command
  container_read_refresh_timeout_milliseconds = each.value.container_read_refresh_timeout_milliseconds
  cpu_period                                  = each.value.cpu_period
  cpu_quota                                   = each.value.cpu_quota
  cpu_set                                     = each.value.cpu_set
  cpu_shares                                  = each.value.cpu_shares
  cpus                                        = each.value.cpus
  destroy_grace_seconds                       = each.value.destroy_grace_seconds
  device_cgroup_rules                         = each.value.device_cgroup_rules
  dns                                         = each.value.dns
  dns_opts                                    = each.value.dns_opts
  dns_search                                  = each.value.dns_search
  domainname                                  = each.value.domainname
  entrypoint                                  = each.value.entrypoint
  env                                         = each.value.env
  gpus                                        = each.value.gpus
  group_add                                   = each.value.group_add
  hostname                                    = each.value.hostname
  init                                        = each.value.init
  ipc_mode                                    = each.value.ipc_mode
  log_driver                                  = each.value.log_driver
  log_opts                                    = each.value.log_opts
  logs                                        = each.value.logs
  max_retry_count                             = each.value.max_retry_count
  memory                                      = each.value.memory
  memory_reservation                          = each.value.memory_reservation
  memory_swap                                 = each.value.memory_swap
  must_run                                    = each.value.must_run
  network_mode                                = each.value.network_mode
  pid_mode                                    = each.value.pid_mode
  platform                                    = each.value.platform
  privileged                                  = each.value.privileged
  publish_all_ports                           = each.value.publish_all_ports
  read_only                                   = each.value.read_only
  remove_volumes                              = each.value.remove_volumes
  restart                                     = each.value.restart
  rm                                          = each.value.rm
  runtime                                     = each.value.runtime
  security_opts                               = each.value.security_opts
  shm_size                                    = each.value.shm_size
  start                                       = each.value.start
  stdin_open                                  = each.value.stdin_open
  stop_signal                                 = each.value.stop_signal
  stop_timeout                                = each.value.stop_timeout
  storage_opts                                = each.value.storage_opts
  sysctls                                     = each.value.sysctls
  tmpfs                                       = each.value.tmpfs
  tty                                         = each.value.tty
  user                                        = each.value.user
  userns_mode                                 = each.value.userns_mode
  wait                                        = each.value.wait
  wait_timeout                                = each.value.wait_timeout
  working_dir                                 = each.value.working_dir

  dynamic "capabilities" {
    for_each = each.value.capabilities != null ? [each.value.capabilities] : []
    content {
      add  = capabilities.value.add
      drop = capabilities.value.drop
    }
  }

  dynamic "device_read_bps" {
    for_each = each.value.device_read_bps != null ? each.value.device_read_bps : []
    content {
      path = device_read_bps.value.path
      rate = device_read_bps.value.rate
    }
  }

  dynamic "device_read_iops" {
    for_each = each.value.device_read_iops != null ? each.value.device_read_iops : []
    content {
      path = device_read_iops.value.path
      rate = device_read_iops.value.rate
    }
  }

  dynamic "device_requests" {
    for_each = each.value.device_requests != null ? each.value.device_requests : []
    content {
      capabilities = device_requests.value.capabilities
      count        = device_requests.value.count
      device_ids   = device_requests.value.device_ids
      driver       = device_requests.value.driver
      options      = device_requests.value.options
    }
  }

  dynamic "device_write_bps" {
    for_each = each.value.device_write_bps != null ? each.value.device_write_bps : []
    content {
      path = device_write_bps.value.path
      rate = device_write_bps.value.rate
    }
  }

  dynamic "device_write_iops" {
    for_each = each.value.device_write_iops != null ? each.value.device_write_iops : []
    content {
      path = device_write_iops.value.path
      rate = device_write_iops.value.rate
    }
  }

  dynamic "devices" {
    for_each = each.value.devices != null ? each.value.devices : []
    content {
      container_path = devices.value.container_path
      host_path      = devices.value.host_path
      permissions    = devices.value.permissions
    }
  }

  dynamic "healthcheck" {
    for_each = each.value.healthcheck != null ? [each.value.healthcheck] : []
    content {
      interval       = healthcheck.value.interval
      retries        = healthcheck.value.retries
      start_interval = healthcheck.value.start_interval
      start_period   = healthcheck.value.start_period
      test           = healthcheck.value.test
      timeout        = healthcheck.value.timeout
    }
  }

  dynamic "host" {
    for_each = each.value.host != null ? each.value.host : []
    content {
      host = host.value.host
      ip   = host.value.ip
    }
  }

  dynamic "labels" {
    for_each = each.value.labels != null ? each.value.labels : []
    content {
      label = labels.value.label
      value = labels.value.value
    }
  }

  dynamic "mounts" {
    for_each = each.value.mounts != null ? each.value.mounts : []
    content {
      dynamic "bind_options" {
        for_each = mounts.value.bind_options != null ? [mounts.value.bind_options] : []
        content {
          propagation = bind_options.value.propagation
        }
      }
      read_only = mounts.value.read_only
      source    = mounts.value.source
      target    = mounts.value.target
      dynamic "tmpfs_options" {
        for_each = mounts.value.tmpfs_options != null ? [mounts.value.tmpfs_options] : []
        content {
          mode       = tmpfs_options.value.mode
          size_bytes = tmpfs_options.value.size_bytes
        }
      }
      type = mounts.value.type
      dynamic "volume_options" {
        for_each = mounts.value.volume_options != null ? [mounts.value.volume_options] : []
        content {
          driver_name    = volume_options.value.driver_name
          driver_options = volume_options.value.driver_options
          dynamic "labels" {
            for_each = volume_options.value.labels != null ? volume_options.value.labels : []
            content {
              label = labels.value.label
              value = labels.value.value
            }
          }
          no_copy = volume_options.value.no_copy
          subpath = volume_options.value.subpath
        }
      }
    }
  }

  dynamic "networks_advanced" {
    for_each = each.value.networks_advanced != null ? each.value.networks_advanced : []
    content {
      aliases        = networks_advanced.value.aliases
      driver_opts    = networks_advanced.value.driver_opts
      gw_priority    = networks_advanced.value.gw_priority
      ipv4_address   = networks_advanced.value.ipv4_address
      ipv6_address   = networks_advanced.value.ipv6_address
      link_local_ips = networks_advanced.value.link_local_ips
      mac_address    = networks_advanced.value.mac_address
      name           = networks_advanced.value.name
    }
  }

  dynamic "ports" {
    for_each = each.value.ports != null ? each.value.ports : []
    content {
      external = ports.value.external
      internal = ports.value.internal
      ip       = ports.value.ip
      protocol = ports.value.protocol
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "ulimit" {
    for_each = each.value.ulimit != null ? each.value.ulimit : []
    content {
      hard = ulimit.value.hard
      name = ulimit.value.name
      soft = ulimit.value.soft
    }
  }

  dynamic "upload" {
    for_each = each.value.upload != null ? each.value.upload : []
    content {
      content        = upload.value.content
      content_base64 = upload.value.content_base64
      executable     = upload.value.executable
      file           = upload.value.file
      group          = upload.value.group
      owner          = upload.value.owner
      permissions    = upload.value.permissions
      source         = upload.value.source
      source_hash    = upload.value.source_hash
    }
  }

  dynamic "volumes" {
    for_each = each.value.volumes != null ? each.value.volumes : []
    content {
      container_path  = volumes.value.container_path
      from_container  = volumes.value.from_container
      host_path       = volumes.value.host_path
      read_only       = volumes.value.read_only
      selinux_relabel = volumes.value.selinux_relabel
      volume_name     = volumes.value.volume_name
    }
  }
}

