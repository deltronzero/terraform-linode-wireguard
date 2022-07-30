# terraform / ansible to setup a wireguard vpn server with new keys every time

`terraform apply -auto-approve -var-file=secret.tfvars`

`ansible-playbook -i inventory/terraform1.yml wg_playbook.yml`
