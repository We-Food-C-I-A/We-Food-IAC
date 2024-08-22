# AWS IAM Access Key
resource "aws_ssm_parameter" "access_key" {
  name  = "/config/${var.terraform_name}/iam.access-key"
  type  = "SecureString"
  value = var.access_key
}

# AWS IAM Secret Key
resource "aws_ssm_parameter" "secret_key" {
  name  = "/config/${var.terraform_name}/iam.secret-key"
  type  = "SecureString"
  value = var.secret_key
}

# 데이터베이스 URL
resource "aws_ssm_parameter" "db_url" {
  name  = "/config/${var.terraform_name}/jdbc.url"
  type  = "String"
  value = "jdbc:mysql://${var.db_host}:${var.db_port}/${var.db_name}"
}

# 데이터베이스 사용자 이름
resource "aws_ssm_parameter" "db_username" {
  name  = "/config/${var.terraform_name}/jdbc.username"
  type  = "String"
  value = var.db_username
}

# 데이터베이스 비밀번호
resource "aws_ssm_parameter" "db_password" {
  name  = "/config/${var.terraform_name}/jdbc.password"
  type  = "String"
  value = var.db_password
}

resource "aws_ssm_parameter" "market_id" {
  name  = "/config/${var.terraform_name}/market-id"
  type  = "String"
  value = var.market_id
}

resource "aws_ssm_parameter" "market_key" {
  name  = "/config/${var.terraform_name}/market-key"
  type  = "SecureString"
  value = var.market_key
}

resource "aws_ssm_parameter" "gpt_api_key" {
  name  = "/config/${var.terraform_name}/gpt.api-key"
  type  = "SecureString"
  value = var.gpt_api_key
}

resource "aws_ssm_parameter" "front_port" {
  name  = "/config/${var.terraform_name}/front.port"
  type  = "String"
  value = var.front_port
}

resource "aws_ssm_parameter" "back_address" {
  name  = "/config/${var.terraform_name}/back.address"
  type  = "SecureString"
  value = var.back_address
}
