# Homelabe Ansible

## Purpose

To provide an automated way to configure the non OCP component of my homelab using ansible

## General info

- Playbooks are located under playbooks/
- Roles are located under roles/
- All playbooks should be run from the top level dir

## Usage

- Run Baseline

    ```bash
    ansible-playbook -u admin -i ~/git/homelab-env/inventory playbooks/baseline.yml -kK
    ```

- Run deploy dns

    ```bash
    ansible-playbook -u admin -i ~/git/homelab-env/inventory playbooks/deploy_dns.yml --ask-vault-pass -kK
    ```

- Run deploy tailscale

    ```bash
    ansible-playbook -u admin -i ~/git/homelab-env/inventory playbooks/deploy_tailscale.yml -kK
    ```
