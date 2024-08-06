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
