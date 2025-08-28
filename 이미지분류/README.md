# 아이리스 이미지 분류 프로젝트 (Iris Image Classification)

## 1. 프로젝트 개요
아이리스(Iris) 꽃 이미지를 기반으로 ResNeXt 모델을 사용하여 이미지 분류를 수행하는 프로젝트입니다.
데이터셋은 각 클래스별 폴더(iris-setosa, iris-virginica, sample_data)에 존재하며, 8:2 비율로 학습(train)과 검증(valid) 데이터로 분리합니다.

학습 과정에서 epoch마다 accuracy 계산
Accuracy 변화를 그래프로 시각화 후 fig 파일로 저장
학습 종료 후 그래프 이미지를 AWS S3 스토리지에 업로드

## 2. 데이터 구성
/content/
    iris-setosa/
    iris-virginica/
    sample_data/

## 3. 데이터 전처리
각 클래스별 폴더에서 8:2 비율로 train/valid 폴더로 재분류
클래스별 폴더 구조 유지
학습용 ImageFolder 형태에 바로 사용 가능

## 4. 기술 스택
모델: PyTorch 기반 ResNeXt
데이터 처리: torchvision.transforms, ImageFolder
학습 관리: DataLoader, Adam 옵티마이저, CrossEntropyLoss
시각화: matplotlib → epoch별 accuracy 그래프 저장
클라우드 저장: AWS S3 (boto3)

## 5. 학습/검증 과정

학습 루프
각 epoch마다 train accuracy 계산 후 리스트에 저장
validation accuracy도 epoch마다 계산
loss, train/valid accuracy 출력

## 6. S3 업로드

## 7. 결과
Epoch별 학습/검증 정확도를 그래프로 확인 가능
모델 학습 후 .pth 파일 저장
Accuracy 그래프는 S3에 업로드되어 원격에서 확인 가능
