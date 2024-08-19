# vpc
variable "vpc_id" {
  type = string
}

# 리소스명에서 참조되는 region_name
variable "region_name" {
  type = string
}

# 리소스명에서 참조되는 terraform_name(서비스명)
variable "terraform_name" {
  type = string
}

# DB에 접근하기 위한 username
variable "db_username" {
  type = string
}

# DB에 접근하기 위한 password
variable "db_password" {
  type = string
}

# rdb에 접근 가능한 ip
variable "app_cidr_block" {
  type = string
}

variable "subnet_id_1" {
  description = "ID of the first subnet for RDS"
  type        = string
}

variable "subnet_id_2" {
  description = "ID of the second subnet for RDS"
  type        = string
}
