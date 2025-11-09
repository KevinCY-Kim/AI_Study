# 🖼️ Computer Vision (CV) 실습 통합 안내

이 디렉토리는 이미지 분류, 객체 인식, 이상치/화재 탐지 등 최신 CV 주제 실험·교육 목적의 코드, 데이터, 실행법을 일목요연하게 정리한 공간입니다.

## 📦 주요 하위 영역 요약

### 1. Iris_Image_Classification
- **목적**: ResNeXt 모델 기반 아이리스 꽃 사진 2클래스 분류
- **주요 파일**: S3_Resnext이미지분류_아이리스.ipynb, requirements.txt, resnext_model.pth, accuracy_per_epoch.png
- **특징**: S3 업로드, epoch별 acc 시각화, PyTorch 기반
- **실행**: ipynb에서 전체 코드 실습(폴더 내부 README/requirements 참조)

### 2. 객체인식
- **목적**: YOLOv8(및 v12) 기반 실시간 객체 인식/탐지, FastAPI+Webcam 연동 등
- **주요 파일·폴더**: webcam_server, webcam_server2, realtime_web, yolov8s.pt, 객체인식_yolov12.ipynb, main.py 등
- **특징**: 실시간 웹캠/이미지 탐지, FastAPI 예시 모듈, 다양한 파생/실습 노트북 구조
- **실행**: camera.py, main.py 직접 실행 또는 노트북 기반 실습

### 3. 화제 탐지_yolov12_딥러닝
- **목적**: 실시간 화재 인식, SAHI 기법 및 YOLOv12/dataset 기반 개선 실험
- **주요 파일**: 화재_탐지_yolov12_딥러닝.ipynb, prediction_visual.png, train_batch0.jpg
- **특징**: 작은 화재 객체까지 개선, Roboflow 데이터 활용, SAHI slicing 적용, Colab/Notebook 환경 적합

### 4. 이상치탐지
- **목적**: YOLOv8 활용 Defected Box 이상치/불량 탐지 실습
- **주요 파일**: CV_이상치탐지_YOLOv8모델학습.ipynb, 학습결과 이미지·runs/
- **특징**: Roboflow 연동 데이터/auto augmentation, TensorBoard, 실험 결과 시각화와 주요 hyperparameter 표기
- **실행**: ipynb 실행 (requirements, 환경설정 내부 README 참고)

---
## 📝 공통 실행환경/기술
- Python 3.10+ / PyTorch / ultralytics(yolov8/yolov12) / numpy / opencv 등, 프로젝트별로 requirements.txt·README 확인 필요
- FastAPI 웹 서버 예시: webcam_server, realtime_web 등에서 실시간 연동 및 REST API

## 🚀 빠른 시작법
1. 각 서브프로젝트 폴더/README 확인(모듈 내 requirements.txt 확인)
2. Jupyter/Colab 노트북 직접 실행 or camera.py, main.py 등 Python 엔트리포인트 실행

## 🔗 참고자료/외부 문서
- [Ultralytics YOLO 공식문서](https://docs.ultralytics.com/)
- [PyTorch 공식문서](https://pytorch.org/docs/)
- [Roboflow 플랫폼](https://roboflow.com/)
- [FastAPI 공식문서](https://fastapi.tiangolo.com/)
- [OpenCV Python Docs](https://docs.opencv.org/)

> 실험실/연구·교육용이며, 상용 적용 전 성능, 데이터 보안, 하드웨어 요구 사항 재점검 필수!
