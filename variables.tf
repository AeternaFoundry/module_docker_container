variable "containers" {
  description = <<EOT
Map of containers, attributes below
Required:
    - image
    - name
Optional:
    - attach
    - cgroup_parent
    - cgroupns_mode
    - command
    - container_read_refresh_timeout_milliseconds
    - cpu_period
    - cpu_quota
    - cpu_set
    - cpu_shares
    - cpus
    - destroy_grace_seconds
    - device_cgroup_rules
    - dns
    - dns_opts
    - dns_search
    - domainname
    - entrypoint
    - env
    - gpus
    - group_add
    - hostname
    - init
    - ipc_mode
    - log_driver
    - log_opts
    - logs
    - max_retry_count
    - memory
    - memory_reservation
    - memory_swap
    - must_run
    - network_mode
    - pid_mode
    - platform
    - privileged
    - publish_all_ports
    - read_only
    - remove_volumes
    - restart
    - rm
    - runtime
    - security_opts
    - shm_size
    - start
    - stdin_open
    - stop_signal
    - stop_timeout
    - storage_opts
    - sysctls
    - tmpfs
    - tty
    - user
    - userns_mode
    - wait
    - wait_timeout
    - working_dir
    - capabilities (block):
        - add (optional)
        - drop (optional)
    - device_read_bps (block):
        - path (required)
        - rate (required)
    - device_read_iops (block):
        - path (required)
        - rate (required)
    - device_requests (block):
        - capabilities (optional)
        - count (optional)
        - device_ids (optional)
        - driver (optional)
        - options (optional)
    - device_write_bps (block):
        - path (required)
        - rate (required)
    - device_write_iops (block):
        - path (required)
        - rate (required)
    - devices (block):
        - container_path (optional)
        - host_path (required)
        - permissions (optional)
    - healthcheck (block):
        - interval (optional)
        - retries (optional)
        - start_interval (optional)
        - start_period (optional)
        - test (optional)
        - timeout (optional)
    - host (block):
        - host (required)
        - ip (required)
    - labels (block):
        - label (required)
        - value (required)
    - mounts (block):
        - bind_options (optional, block):
            - propagation (optional)
        - read_only (optional)
        - source (optional)
        - target (required)
        - tmpfs_options (optional, block):
            - mode (optional)
            - size_bytes (optional)
        - type (required)
        - volume_options (optional, block):
            - driver_name (optional)
            - driver_options (optional)
            - labels (optional, block):
                - label (required)
                - value (required)
            - no_copy (optional)
            - subpath (optional)
    - networks_advanced (block):
        - aliases (optional)
        - driver_opts (optional)
        - gw_priority (optional)
        - ipv4_address (optional)
        - ipv6_address (optional)
        - link_local_ips (optional)
        - mac_address (optional)
        - name (required)
    - ports (block):
        - external (optional)
        - internal (required)
        - ip (optional)
        - protocol (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - ulimit (block):
        - hard (required)
        - name (required)
        - soft (required)
    - upload (block):
        - content (optional)
        - content_base64 (optional)
        - executable (optional)
        - file (required)
        - group (optional)
        - owner (optional)
        - permissions (optional)
        - source (optional)
        - source_hash (optional)
    - volumes (block):
        - container_path (optional)
        - from_container (optional)
        - host_path (optional)
        - read_only (optional)
        - selinux_relabel (optional)
        - volume_name (optional)
EOT

  type = map(object({
    image                                       = string
    name                                        = string
    attach                                      = optional(bool)
    cgroup_parent                               = optional(string)
    cgroupns_mode                               = optional(string)
    command                                     = optional(list(string))
    container_read_refresh_timeout_milliseconds = optional(number)
    cpu_period                                  = optional(number)
    cpu_quota                                   = optional(number)
    cpu_set                                     = optional(string)
    cpu_shares                                  = optional(number)
    cpus                                        = optional(string)
    destroy_grace_seconds                       = optional(number)
    device_cgroup_rules                         = optional(set(string))
    dns                                         = optional(set(string))
    dns_opts                                    = optional(set(string))
    dns_search                                  = optional(set(string))
    domainname                                  = optional(string)
    entrypoint                                  = optional(list(string))
    env                                         = optional(set(string))
    gpus                                        = optional(string)
    group_add                                   = optional(set(string))
    hostname                                    = optional(string)
    init                                        = optional(bool)
    ipc_mode                                    = optional(string)
    log_driver                                  = optional(string)
    log_opts                                    = optional(map(string))
    logs                                        = optional(bool)
    max_retry_count                             = optional(number)
    memory                                      = optional(number)
    memory_reservation                          = optional(number)
    memory_swap                                 = optional(number)
    must_run                                    = optional(bool)
    network_mode                                = optional(string)
    pid_mode                                    = optional(string)
    platform                                    = optional(string)
    privileged                                  = optional(bool)
    publish_all_ports                           = optional(bool)
    read_only                                   = optional(bool)
    remove_volumes                              = optional(bool)
    restart                                     = optional(string)
    rm                                          = optional(bool)
    runtime                                     = optional(string)
    security_opts                               = optional(set(string))
    shm_size                                    = optional(number)
    start                                       = optional(bool)
    stdin_open                                  = optional(bool)
    stop_signal                                 = optional(string)
    stop_timeout                                = optional(number)
    storage_opts                                = optional(map(string))
    sysctls                                     = optional(map(string))
    tmpfs                                       = optional(map(string))
    tty                                         = optional(bool)
    user                                        = optional(string)
    userns_mode                                 = optional(string)
    wait                                        = optional(bool)
    wait_timeout                                = optional(number)
    working_dir                                 = optional(string)
    capabilities = optional(object({
      add  = optional(set(string))
      drop = optional(set(string))
    }))
    device_read_bps = optional(list(object({
      path = string
      rate = number
    })))
    device_read_iops = optional(list(object({
      path = string
      rate = number
    })))
    device_requests = optional(list(object({
      capabilities = optional(set(string))
      count        = optional(number)
      device_ids   = optional(set(string))
      driver       = optional(string)
      options      = optional(map(string))
    })))
    device_write_bps = optional(list(object({
      path = string
      rate = number
    })))
    device_write_iops = optional(list(object({
      path = string
      rate = number
    })))
    devices = optional(list(object({
      container_path = optional(string)
      host_path      = string
      permissions    = optional(string)
    })))
    healthcheck = optional(object({
      interval       = optional(string)
      retries        = optional(number)
      start_interval = optional(string)
      start_period   = optional(string)
      test           = optional(list(string))
      timeout        = optional(string)
    }))
    host = optional(list(object({
      host = string
      ip   = string
    })))
    labels = optional(list(object({
      label = string
      value = string
    })))
    mounts = optional(list(object({
      bind_options = optional(object({
        propagation = optional(string)
      }))
      read_only = optional(bool)
      source    = optional(string)
      target    = string
      tmpfs_options = optional(object({
        mode       = optional(number)
        size_bytes = optional(number)
      }))
      type = string
      volume_options = optional(object({
        driver_name    = optional(string)
        driver_options = optional(map(string))
        labels = optional(list(object({
          label = string
          value = string
        })))
        no_copy = optional(bool)
        subpath = optional(string)
      }))
    })))
    networks_advanced = optional(list(object({
      aliases        = optional(set(string))
      driver_opts    = optional(set(string))
      gw_priority    = optional(number)
      ipv4_address   = optional(string)
      ipv6_address   = optional(string)
      link_local_ips = optional(set(string))
      mac_address    = optional(string)
      name           = string
    })))
    ports = optional(list(object({
      external = optional(number)
      internal = number
      ip       = optional(string)
      protocol = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    ulimit = optional(list(object({
      hard = number
      name = string
      soft = number
    })))
    upload = optional(list(object({
      content        = optional(string)
      content_base64 = optional(string)
      executable     = optional(bool)
      file           = string
      group          = optional(string)
      owner          = optional(string)
      permissions    = optional(string)
      source         = optional(string)
      source_hash    = optional(string)
    })))
    volumes = optional(list(object({
      container_path  = optional(string)
      from_container  = optional(string)
      host_path       = optional(string)
      read_only       = optional(bool)
      selinux_relabel = optional(string)
      volume_name     = optional(string)
    })))
  }))
  # Note: 25 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

