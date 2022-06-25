variable "root_password" {
  description = "root password"
  type        = string
  sensitive   = true
}

variable "linode_token" {
  description = "linode api token"
  type        = string
  sensitive   = true
}

variable "authorized_keys" {
  description = "ssh authorized keys"
  type        = list(string)
  sensitive   = false
}
