Baseline
=========

The goal of this role is to configure a baseline for your server.

Requirements
------------

```yaml
collections:
  - name: community.general
  - name: ansible.builtin
```

Role Variables
--------------

```yaml

# Setting timezone
baseline_timezone: UTC

# Installing some default packages
baseline_packages:
  - vim
  - tmux
  - git
  - tcpdump

# Remove some packages
baseline_remove_packages:
  - insights-client

# Example vars for cockpit configure

cockpit_packages:
  - cockpit
  - cockpit-podman
  - cockpit-networkmanager
  - cockpit-storaged
  - cockpit-file-sharing
  - cockpit-bridge
cockpit_manage_firewall: false
cockpit_port: 9090
cockpit_config:
  WebService:
    Origins: "https://cockpit.{{ inventory_hostname }}"
  Session:
    IdleTimeout: 15
    Banner: "/etc/issue"
```

Example Playbook
----------------

```yaml
- name: Run baseline role
  hosts: all
  tasks:
    - name: Include baseline role
      ansible.builtin.include_role:
        name: baseline
```

License
-------

MIT

Author Information
------------------

The Wizard of Ozolins
