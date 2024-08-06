# AWS를 Provider로 설정
provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}

# VPC, Subnet 등 네트워크 환경 구축
module "network" {
  source         = "./modules/network"
  cidr_block     = var.cidr_block
  region_name    = var.region_name
  terraform_name = var.terraform_name
  keypair        = var.keypair
  remote_ip      = var.remote_ip
}
