# 🧑‍🔬 머신러닝(ML) 실습 통합 가이드

이 디렉토리는 와인 분류, 고객 지원 등급 분류, 타이타닉 생존 예측 등 대표적 머신러닝 프로젝트별 실습/연구용 코드, 데이터, 실행 예시를 구조적으로 정리한 공간입니다.

## 📦 하위 프로젝트 구성

### 1. ML_wine
- **목적**: 다층 퍼셉트론(MLP) 기반 와인 데이터 분류 실습
- **주요 파일**:
  - MLP_code for wine.ipynb (Jupyter 실습)
  - wine.csv (데이터)
- **실행**: Jupyter에서 ipynb 실행

### 2. ML_데이콘 Basic 고객 지원 등급 분류
- **목적**: 데이콘 대회용 고객 등급 ML 분류 (AutoML·앙상블 포함)
- **주요 파일**:
  - 데이콘_Basic_고객_지원_등급_분류.ipynb (분석노트북)
  - 데이콘_basic_고객_지원_등급_분류.py (스크립트)
  - train.csv, test.csv (데이터)
- **실행**: requirements 설치 후 Jupyter/py 실행, 상세 방법 하위 README 참고

### 3. ML_타이타닉_Optuna
- **목적**: Optuna로 하이퍼파라미터 튜닝 등 타이타닉 예측
- **주요 파일**:
  - ML_타이타닉__Optuna.ipynb (기본 실습)
  - ML_타이타닉__Optuna_하이퍼파라미터튜닝.ipynb (Optuna 실험)
  - titanic.csv (데이터)
- **실행**: Jupyter에서 ipynb 실행

### 4. ML_타이타닉_RDSML
- **목적**: RDSML 실습용 타이타닉 생존 예측 (여러 ML모델)
- **주요 파일**:
  - RDSML_타이타닉.ipynb (노트북)
  - titanic.csv (데이터)
- **실행**: Jupyter에서 ipynb 실행

---
## 📝 공통 특징/기술스택
- Python 3.x 기반
- scikit-learn, pandas, numpy, (프로젝트별로 pycaret, catboost, lightgbm, xgboost, optuna 등 필요)

## ✅ 빠른 시작법
1. 각 서브폴더 하위 README.md 참고
2. 데이터(csv) 확인 및 requirements.txt(존재 시)로 환경 준비
3. 각 노트북(.ipynb) 혹은 py코드 실행

## 📚 참고 리소스
- [scikit-learn 공식 문서](https://scikit-learn.org/stable/)
- [PyCaret 공식 문서](https://pycaret.gitbook.io/docs/)
- [Optuna 공식 문서](https://optuna.org/)

> 실습내용·코드 활용 전 각 하위폴더 README와 데이터/환경파일을 꼭 확인하세요!
