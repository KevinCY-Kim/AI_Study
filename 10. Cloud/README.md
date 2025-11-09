# ☁️ 클라우드 서비스 배포 및 운영 가이드

이 디렉토리는 AWS, GCP, NCP 환경에서 인공지능, 서버 애플리케이션을 배포·운영하며 기록한 설정 이미지와 매뉴얼, 참고자료를 체계적으로 정리한 공간입니다.

## 목차
1. [AWS (Amazon Web Services)](#aws-amazon-web-services)
2. [GCP (Google Cloud Platform)](#gcp-google-cloud-platform)
3. [NCP (Naver Cloud Platform)](#ncp-naver-cloud-platform)

---

## AWS (Amazon Web Services)
- **설명:** EC2 인스턴스 생성, 보안키 관리, 서버 설정 등 주요 클라우드 운영 과정의 이미지 및 공식 PDF 매뉴얼 포함
- **📁 주요 파일 및 폴더**
  - [AI마스터]클라우드와MLOps.pdf : 배포 및 운영 전체 흐름 매뉴얼
  - 1~5. AWSEC2.png, AWSconfig.png, AWSkey.png: 실제 설정 단계별 이미지
  - main.py, templates/: 예시 FastAPI 서버 코드 및 템플릿
- **📄 실행/참고**
  - [AWS 폴더 README 바로가기](./AWS/README.md)
  - 공식 매뉴얼: [AI마스터 클라우드와MLOps.pdf](./AWS/%5BAI%EB%A7%88%EC%8A%A4%ED%84%B0%5D%ED%81%B4%EB%9D%BC%EC%9A%B0%EB%93%9CMLOps.pdf)

---

## GCP (Google Cloud Platform)
- **설명:** GCP VM 인스턴스, SSH Key 관리, 포트 개방 등 실 배포 과정별 화면 이미지와 공식 안내 PDF 제공
- **📁 주요 파일 및 폴더**
  - [AI마스터]GCP.pdf : VM 인스턴스 개설, 네트워크 설정 등 단계별 가이드
  - 1. Config.png, 2. SSHKey.png, 3. VM인스턴스.png, 4. Portsetting.png: 실습 이미지
  - 5. mobile_connect to GCP.jpg : 모바일 연결 확인 이미지
- **📄 참고**
  - 공식 매뉴얼: [GCP.pdf](./GCP/%5BAI%EB%A7%88%EC%8A%A4%ED%84%B0%5DGCP.pdf)

---

## NCP (Naver Cloud Platform)
- **설명:** VPC, VM 설정, 서버 대시보드 등 NCP 운영 작업 전체 이미지와 공식 PDF 포함
- **📁 주요 파일 및 폴더**
  - [AI마스터]네이버클라우드.pdf : 네이버클라우드 서비스 단계별 사용 매뉴얼
  - 1. VPC.png, 2. main.png, 3. Dashboard.png, 4. serversetting.png: 설정 이미지
  - 5. mobile_connect to NCP.jpg : 모바일 접속 확인 이미지
- **📄 참고**
  - 공식 매뉴얼: [네이버클라우드.pdf](./NCP/%5BAI%EB%A7%88%EC%8A%A4%ED%84%B0%5D%EB%84%A4%EC%9D%B4%EB%B2%84%ED%81%B4%EB%9D%BC%EC%9A%B0%EB%93%9C.pdf)

---

## 📚 참고/외부 문서
- [AWS 공식 가이드](https://docs.aws.amazon.com/ko_kr/)
- [GCP 공식 가이드](https://cloud.google.com/docs?hl=ko)
- [NCP 공식 매뉴얼](https://guide.ncloud-docs.com/docs/ko/)

> 추가적인 배포 자동화, 실습 코드, 보안 설정 예시는 각 하위 폴더의 코드와 매뉴얼, 이미지 파일을 참고해주세요.
