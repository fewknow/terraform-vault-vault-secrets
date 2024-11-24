provider "vault" {
  address = var.vault_address
  token   = var.vault_token
}

resource "vault_kv_secret_v2" "secret" {
  mount = var.mount
  name  = var.secret_name

  data_json = jsonencode(var.secret_data)
}

output "secret_path" {
  value = "${var.mount}/${var.secret_name}"
}
