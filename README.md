# We-Food-IAC

We-Food 프로젝트의 Infrastructure as Code (IAC) 리포지토리입니다.

## Architecture

![We-Food Architecture](https://gist.github.com/user-attachments/assets/8144e781-6468-40c7-bf8e-013e6c579a15)

## 리소스 설명

### AWS S3

- 정적 웹 콘텐츠 및 미디어 파일 저장소로 사용
- CloudFront와 연계하여 정적 컨텐츠 전송 속도를 향상시키는 것이 목표

### AWS CloudFront

- 전역 콘텐츠 전송 네트워크(CDN)로 사용
- S3에 저장된 정적 콘텐츠를 사용자에게 빠르게 전달

### AWS Route 53

- DNS 서비스로 사용
- 도메인 이름을 관리하고 트래픽을 적절한 AWS 리소스로 라우팅

### AWS Internet Gateway

- VPC와 인터넷 간의 통신을 가능하게 함
- 공용 서브넷의 리소스가 인터넷에 접근할 수 있도록 함

### AWS Application Load Balancer

- 들어오는 애플리케이션 트래픽을 여러 EC2 인스턴스로 분산
- HTTPS 종단점을 제공하고 SSL/TLS 인증서 관리

### AWS EC2

- 애플리케이션 서버(Web, WAS)로 사용
- 웹 서버와 애플리케이션 로직을 호스팅

### AWS RDS

- 관계형 데이터베이스 서비스(PaaS)로 사용
- 애플리케이션의 데이터를 저장하고 관리

### VPC (Virtual Private Cloud)

- 격리된 가상 네트워크 환경을 제공
- 보안 그룹과 네트워크 ACL을 통해 네트워크 접근 제어

### Public Subnet

- 인터넷에서 직접 접근 가능한 리소스를 호스팅

### Private Subnet

- 인터넷에서 직접 접근할 수 없는 리소스를 호스팅
- EC2 인스턴스와 RDS 데이터베이스가 위치하여 보안을 강화하는 것이 목표

### Availability Zones

- 물리적으로 분리된 데이터 센터를 의미
- 고가용성과 내결함성을 제공하기 위해 리소스를 여러 AZ에 분산 배치
- 현재 프로젝트에서는 ALB를 사용하기 위해 비어있는 Subnet을 배치하기 위해 사용

## Bastion Host 접속 방법

&nbsp; 보안을 위해 프라이빗 서브넷의 리소스에 접근할 때는 Bastion Host를 통해 접속한다.

```bash
chmod 400 xxx.pem
ssh -i xxx.pem xxx@xxx.xxx.xxx.xxx
```
