# terraform / ansible to setup a wireguard vpn server with new keys every time

1. update `secret.tfvars` with correct api keys
2. `terraform apply -auto-approve -var-file=secret.tfvars`
3. `cd ansible`
4. `ansible-playbook -i inventory/terraform1.yml wg_playbook.yml`
