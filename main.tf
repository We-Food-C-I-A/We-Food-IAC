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

# RDS 구축
module "rdb" {
  source         = "./modules/rdb"
  vpc_id         = module.network.vpc_id
  subnet_id_1    = module.network.db_subnet_id1
  subnet_id_2    = module.network.db_subnet_id2
  region_name    = var.region_name
  terraform_name = var.terraform_name
  db_username    = var.db_username
  db_password    = var.db_password
  app_cidr_block = module.network.net_cidr_block
}

# S3 구축
module "storage" {
  source = "./modules/storage"
  domain = var.domain
}

# Parameter Store 구축
module "parameter" {
  source         = "./modules/parameter"
  region_name    = var.region_name
  terraform_name = var.terraform_name
  db_host        = module.rdb.db_host
  db_port        = var.db_port
  db_name        = var.db_name
  db_username    = var.db_username
  db_password    = var.db_password
}
