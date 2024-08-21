# 서비스 도메인
variable "domain" {
  type = string
}

# 인증서 arn
variable "certificate_arn" {
  type = string
}

variable "certificate_validation_completion" {
  type = string
}
