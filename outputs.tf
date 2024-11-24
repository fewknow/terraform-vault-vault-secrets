output "vault_secret_path" {
  description = "The path of the created Vault secret"
  value       = vault_kv_secret_v2.secret.path
}
