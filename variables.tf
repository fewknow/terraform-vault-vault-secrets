variable "vault_address" {
  description = "The address of the Vault server"
  type        = string
}

variable "vault_token" {
  description = "The Vault token with sufficient permissions"
  type        = string
  sensitive   = true
}

variable "mount" {
  description = "The KV secrets engine mount point"
  type        = string
  default     = "secret" # Default for most setups; change if necessary
}

variable "secret_name" {
  description = "The name of the secret to create in Vault"
  type        = string
}

variable "secret_data" {
  description = "A map of key-value pairs to store as the secret data"
  type        = map(string)
}
