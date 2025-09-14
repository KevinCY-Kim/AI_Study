# Deeplearning

이 저장소는 머신러닝, 딥러닝, 자연어처리, 모델 최적화 등 다양한 실습/프로젝트를 폴더별로 정리한 자료입니다. 각 폴더별로 주요 실습 주제, 구현 기능, 데이터, 대표 코드/노트북, 결과 등을 한눈에 볼 수 있도록 정리했습니다.

## 목차
- [1. ML (머신러닝)](#1-ml-머신러닝)
- [2. CNN (합성곱 신경망)](#2-cnn-합성곱-신경망)
- [3. NLP (자연어처리)](#3-nlp-자연어처리)
- [4. Model Optimizing (모델 최적화)](#4-model-optimizing-모델-최적화)

---

## 1. ML (머신러닝)
- **ML_타이타닉_Optuna**
  - 타이타닉 생존자 예측 (Optuna 하이퍼파라미터 튜닝)
  - 데이터: titanic.csv
  - 주요 모델: Logistic Regression, RandomForest, XGBoost + Optuna
  - 주요 기능: 데이터 전처리, 특성 선택, 하이퍼파라미터 자동 탐색, 성능 비교
  - [상세 README](./1.%20ML/ML_타이타닉_Optuna/README.md)
- **ML_wine**
  - 와인 분류 (MLP)
  - 데이터: wine.csv
  - 주요 기능: MLP 기반 분류, 성능 평가
- **ML_타이타닉_RDSML**
  - 타이타닉 생존자 예측 (RDSML 실습)
  - 데이터: titanic.csv
  - 주요 기능: 다양한 ML 실험

## 2. CNN (합성곱 신경망)
- **Iris_Image_Classification**
  - 아이리스 꽃 이미지 분류 (ResNeXt)
  - 데이터: iris-setosa, iris-virginica 이미지
  - 주요 기능: 이미지 분류, S3 업로드, epoch별 accuracy 시각화
  - [상세 README](./2.%20CNN/Iris_Image_Classification/README.md)
- **객체인식**
  - 실시간 객체 인식 (YOLOv8, FastAPI 웹서버)
  - 주요 기능: 웹캠/이미지 객체 탐지, YOLO 실험, 웹서버 구현

## 3. NLP (자연어처리)
- **llama파인튜닝과퓨샷프롬프트**
  - Llama LLM 파인튜닝, RAG 실험
  - 주요 기능: LLM 파인튜닝, RAG, 웰니스 데이터셋 활용
- **mychat_사내정책**
  - 사내 정책 챗봇, 웰니스 챗봇, 다양한 데이터셋/모델 실험
- **web_chatbot**
  - 간단한 웹 챗봇 구현
- **web_time**
  - LSTM 기반 시계열 예측, 웹서비스
- **사내규정챗봇**
  - 웰니스/사내규정 데이터 기반 챗봇, 파인튜닝 실습

## 4. Model Optimizing (모델 최적화)
- **모델최적화와_컨버트_XAI**
  - 모델 경량화(프루닝, 양자화), ONNX/TFLite 변환, XAI(GradCAM) 실습
  - 주요 기능: PyTorch/TensorRT/ONNX/TFLite 변환, 모바일/웹 배포, GradCAM 시각화

---

각 폴더별 상세 README 및 노트북에서 더 많은 코드와 실험 결과를 확인할 수 있습니다. 필요에 따라 자유롭게 수정/확장해 주세요!
