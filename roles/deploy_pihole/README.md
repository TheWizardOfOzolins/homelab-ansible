deploy_pihole
=========

This role deploys pihole ad block / dns on a select amount of nodes. It also when configures deploys a pihole syncer so that you can keep your pihole config inline between nodes.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

```yaml
# Pihole vars
deploy_pihole_dns_podman_create_host_directories
deploy_pihole_dns_podman_firewall
deploy_pihole_dns_podman_kube_specs

# DNS sync vars
deploy_pihole_dns_sync_podman_kube_specs

```

Example Playbook
----------------

```yaml
- name: Sets up unbound and pihole in a container
  hosts: dns
  become: true
  gather_facts: true
  tasks:
    - name: Set up containers
      ansible.builtin.include_role:
        name: deploy_pihole_unbound
```

License
-------

BSD

Author Information
------------------

TheWizardOfOzolins
