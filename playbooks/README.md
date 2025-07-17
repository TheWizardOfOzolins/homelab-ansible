# Playbooks

This dir stores all the playbooks for this repo. Ideally you want to run your playbooks from the top leave and not from within this playbooks dir. The examples below will be as if you are running it from the top level dir/ 

## How to run playbooks

- Running the baseline playbook. This as the name suggests baselines your fedora/centos/rhel server with some standard baselines

    ```bash
    ansible-playbook -i <inventory file> playbooks/baseline.yml -kK
    ```

- Running the deploy dns playbook calls the deploy_pihole role.

    ```bash
    ansible-playbook -i <inventory file> playbooks/deploy_dns.yml -kK --ask-vault-pass
    ```

- Running the deploy traefik playbook calls the deploy_traefik role.

    ```bash
    ansible-playbook -i <inventory file> playbooks/deploy_traefik.yml -kK --ask-vault-pass
    ```

- Running the deploy nfs server playbook calls the deploy_nfs_server role.

    ```bash
    ansible-playbook -i <inventory file> playbooks/deploy_nfs_server.yml -kK
    ```

- Running the deploy tailscale playbook calls the deploy_tailscale role.

    ```bash
    ansible-playbook -i <inventory file> playbooks/deploy_tailscale.yml -kK --ask-vault-pass
    ```
