# AWS 계정의 액세스 키 ID
variable "access_key" {
  description = "AWS accesskey"
  type        = string
}

# AWS 계정의 시크릿 액세스 키 ID
variable "secret_key" {
  description = "AWS accesskey"
  type        = string
}

# AWS region
variable "region" {
  description = "AWS region"
  default     = "ap-northeast-2"
}

# 리소스명에 참조될 region의 별명 설정
variable "region_name" {
  description = "AWS region name"
  default     = "apne2"
}

# 리소스명에 참조될 terraform의 별명(서비스명) 설정
variable "terraform_name" {
  default = "wefood"
}

# 네트워크 환경 설정에 사용되는 cidr block 설정
variable "cidr_block" {
  type = string
}

# bastion 서버에 접속하기 위해 사용되는 IP 주소
variable "remote_ip" {
  type = string
}

# AWS EC2 인스턴스에 SSH 접속을 위해 사용되는 키 쌍
variable "keypair" {
  type = string
}

# RDS에 접근하기 위한 port
variable "db_port" {
  type = number
}

# RDS에 접근하기 위한 database name
variable "db_name" {
  type = string
}

# RDS에 접근하기 위한 username
variable "db_username" {
  type = string
}

# RDS에 접근하기 위한 password
variable "db_password" {
  type = string
}

# 도메인
variable "domain" {
  type = string
}

# 마켓 아이디
variable "market_id" {
  type = string
}

# 마켓 키
variable "market_key" {
  type = string
}

# GPT API 키
variable "gpt_api_key" {
  type = string
}

# 프론트 포트
variable "front_port" {
  type = string
}

# 백엔드 주소
variable "back_address" {
  type = string
}
