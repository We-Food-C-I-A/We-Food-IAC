# network 모듈에서 VPC ID를 출력하도록 설정
output "vpc_id" {
  value = aws_vpc.vpc.id
}

# db_subnet_id를 출력하도록 설정
output "db_subnet_id1" {
  value = aws_subnet.data1.id
}

output "db_subnet_id2" {
  value = aws_subnet.data2.id
}
