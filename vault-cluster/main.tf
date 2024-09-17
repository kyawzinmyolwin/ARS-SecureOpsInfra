resource "hcp_hvn" "ars_hvn" {
  hvn_id         = "hvn"
  cloud_provider = "aws"
  region         = var.aws_region
  cidr_block     = "172.25.16.0/20"
}

resource "hcp_vault_cluster" "ars_vault_cluster" {
  cluster_id = "ars-vault-cluster"
  hvn_id     = hcp_hvn.ars_hvn.hvn_id
  tier       = "dev"
  public_endpoint = true #to get vault cluster access from public
}