# 데이터베이스 URL을 저장하는 SSM 파라미터를 생성하는 코드
resource "aws_ssm_parameter" "db_url" {
  name  = "/${var.terraform_name}/db_url"
  type  = "String"
  value = "jdbc:mysql://${var.db_host}:${var.db_port}/${var.db_name}"

  tags = {
    Name = "${var.region_name}-${var.terraform_name}-rdb-host"
  }
}

# 데이터베이스 사용자 이름을 저장하는 SSM 파라미터를 생성하는 코드
resource "aws_ssm_parameter" "db_username" {
  name  = "/${var.terraform_name}/db_username"
  type  = "String"
  value = var.db_username

  tags = {
    Name = "${var.region_name}-${var.terraform_name}-rdb-username"
  }
}

# 데이터베이스 비밀번호를 저장하는 SSM 파라미터를 생성하는 코드
resource "aws_ssm_parameter" "db_password" {
  name  = "/${var.terraform_name}/db_password"
  type  = "String"
  value = var.db_password

  tags = {
    Name = "${var.region_name}-${var.terraform_name}-rdb-password"
  }
}
