# 리소스명에서 참조되는 region_name
variable "region_name" {
  type = string
}

# 리소스명에서 참조되는 terraform_name(서비스명)
variable "terraform_name" {
  type = string
}

# AWS IAM Access Key
variable "access_key" {
  type = string
}

# AWS IAM Secret Key
variable "secret_key" {
  type = string
}

# 데이터베이스 호스트
variable "db_host" {
  type = string
}

# 데이터베이스 포트
variable "db_port" {
  type = string
}

# 데이터베이스 이름
variable "db_name" {
  type = string
}

# 데이터베이스 사용자명
variable "db_username" {
  type = string
}

# 데이터베이스 비밀번호
variable "db_password" {
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
