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
