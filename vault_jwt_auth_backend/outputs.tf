output "role_name" {
  description = "Name of the auth role"
  value       = vault_jwt_auth_backend_role.jwt_auth_role.role_name
}

