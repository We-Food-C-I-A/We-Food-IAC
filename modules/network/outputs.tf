# network 모듈에서 VPC ID를 출력하도록 설정
output "vpc_id" {
  value = aws_vpc.vpc.id
}

# db_subnet_id를 출력하도록 설정
output "db_subnet_id1" {
  value = aws_subnet.data1.id
}

# db_subnet_id를 출력하도록 설정
output "db_subnet_id2" {
  value = aws_subnet.data2.id
}

# bastion 서버의 public ip를 출력하도록 설정
output "net_cidr_block" {
  value = aws_subnet.net.cidr_block
}
