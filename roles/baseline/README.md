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
baseline_timezone: Australia/Sydney
baseline_packages:
  - vim
  - tmux
  - tcpdump
```

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:
```yaml
    - name: Baseline
      hosts: servers
      tasks:
         - name: Run baseline role
```

License
-------

MIT

Author Information
------------------

The Wizard of OZ
