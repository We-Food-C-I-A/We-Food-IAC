# rds security-group 정의
resource "aws_security_group" "rds_sg" {
  vpc_id = var.vpc_id

  tags = {
    Name = "${var.region_name}-${var.terraform_name}-rds-sg"
  }
}

# bastion 서버에서 net 서브넷에서 오는 접근 허용
resource "aws_security_group_rule" "bastion_inbound_ssh" {
  type              = "ingress"
  from_port         = 3306
  to_port           = 3306
  protocol          = "tcp"
  cidr_blocks       = [var.remote_ip]
  security_group_id = aws_security_group.rds_sg.id
}

# rds subnet group 정의
resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "${var.terraform_name}-rds-subnet-group"
  subnet_ids = [var.subnet_id_1, var.subnet_id_2]

  tags = {
    Name = "${var.terraform_name}-rds-subnet-group"
  }
}

# rds 리소스 정의
resource "aws_db_instance" "rdb" {
  identifier            = "${var.terraform_name}-rdb"
  engine                = "mysql"
  engine_version        = "8.0"
  instance_class        = "db.t3.micro"
  allocated_storage     = 20
  max_allocated_storage = 100
  storage_type          = "gp2"
  username              = var.db_username
  password              = var.db_password
  parameter_group_name  = "default.mysql8.0"
  skip_final_snapshot   = true
  publicly_accessible   = true

  #   vpc_security_group_ids = [aws_security_group.rds_sg.id]

  tags = {
    Name = "${var.terraform_name}-rdb"
  }
}
