# AWS를 Provider로 설정
provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}

# VPC, Subnet 등 네트워크 환경 구축
module "network" {
  source          = "./modules/network"
  cidr_block      = var.cidr_block
  region_name     = var.region_name
  terraform_name  = var.terraform_name
  keypair         = var.keypair
  remote_ip       = var.remote_ip
  domain          = var.domain
  cdn_domain_name = module.storage.cdn_domain_name
  cdn_zone_id     = module.storage.cdn_zone_id
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
  source                            = "./modules/storage"
  domain                            = var.domain
  certificate_arn                   = module.network.certificate_validation_completion
  certificate_validation_completion = module.network.certificate_validation_completion
}

# Parameter Store 구축
module "parameter" {
  source         = "./modules/parameter"
  region_name    = var.region_name
  terraform_name = var.terraform_name
  access_key     = var.access_key
  secret_key     = var.secret_key
  db_host        = module.rdb.db_host
  db_port        = var.db_port
  db_name        = var.db_name
  db_username    = var.db_username
  db_password    = var.db_password
  market_id      = var.market_id
  market_key     = var.market_key
  gpt_api_key    = var.gpt_api_key
  front_port     = var.front_port
  back_address   = var.back_address
}
