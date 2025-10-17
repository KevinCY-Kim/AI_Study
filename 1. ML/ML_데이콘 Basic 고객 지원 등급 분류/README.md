# 데이콘 Basic 고객 지원 등급 분류

## 📋 프로젝트 개요

이 프로젝트는 데이콘의 "Basic 고객 지원 등급 분류" 대회를 위한 머신러닝 솔루션입니다. 고객의 특성을 기반으로 지원 등급을 예측하는 다중 분류 문제를 해결합니다.

## 🎯 목표

고객 데이터를 분석하여 고객의 지원 필요도(`support_needs`)를 0, 1, 2 등급으로 분류하는 모델을 개발합니다.

## 📊 데이터셋

### 데이터 구조
- **훈련 데이터**: `train.csv` (30,860개 샘플)
- **테스트 데이터**: `test.csv` (13,225개 샘플)

### 피처 (Features)
| 피처명 | 타입 | 설명 |
|--------|------|------|
| `ID` | 문자열 | 고객 식별자 |
| `age` | 연속형 | 고객 나이 |
| `gender` | 범주형 | 성별 (F/M) |
| `tenure` | 연속형 | 고객 기간 |
| `frequent` | 연속형 | 사용 빈도 |
| `payment_interval` | 연속형 | 결제 간격 |
| `subscription_type` | 범주형 | 구독 유형 (member/plus/vip) |
| `contract_length` | 연속형 | 계약 기간 |
| `after_interaction` | 연속형 | 상호작용 후 |

### 타겟 변수
- `support_needs`: 고객 지원 등급 (0, 1, 2)

## 🔬 분석 방법론

### 1. 통계적 분석
- **피어슨 상관계수**: 연속형 변수 간의 선형 관계 측정
- **스피어만 상관계수**: 순위 기반 단조 관계 측정
- **명목형 변수 분석**: 카이제곱 통계량 및 ANOVA 사용

### 2. 특성 공학 (Feature Engineering)
- **K-Means 클러스터링**: 고객을 5개 그룹으로 분류
  - 사용 피처: `age`, `tenure`, `frequent`, `payment_interval`, `contract_length`, `after_interaction`
  - 표준화를 통한 스케일 정규화
  - `Cluster_ID` 파생변수 생성

### 3. 모델링 접근법

#### AutoML을 통한 모델 선정
- **PyCaret** 라이브러리 활용
- 교차 검증(5-fold) 기반 모델 비교
- F1 Score 기준 상위 3개 모델 선정:
  1. **CatBoost**
  2. **LightGBM** 
  3. **XGBoost**

#### 앙상블 모델링
- **Stacking 앙상블** 구현
- Base 모델: LightGBM, XGBoost, Random Forest
- Meta 모델: CatBoost

## 📈 모델 성능

### 최고 성능 모델
- **LightGBM**: Accuracy 0.5278, F1 Score 0.4812

### Stacking 앙상블 결과
- **Accuracy**: 0.5156
- **F1 Score**: 0.4770
- **AUC**: 0.6696

### 성능 분석
- Stacking 모델이 단일 모델보다 낮은 성능을 보임
- **원인 분석**:
  - 기반 모델의 다양성 부족 (LightGBM, XGBoost 모두 Gradient Boosting 계열)
  - 하이퍼파라미터 튜닝 미적용
  - AUC 관점에서는 Random Forest와 XGBoost보다 우수한 성능

## 🛠️ 기술 스택

- **Python 3.11**
- **주요 라이브러리**:
  - `pandas`: 데이터 조작
  - `scikit-learn`: 머신러닝 알고리즘
  - `pycaret`: AutoML
  - `catboost`: 그래디언트 부스팅
  - `lightgbm`: 그래디언트 부스팅
  - `xgboost`: 그래디언트 부스팅

## 📁 파일 구조

```
├── train.csv                                    # 훈련 데이터
├── test.csv                                     # 테스트 데이터
├── 데이콘_Basic_고객_지원_등급_분류.ipynb       # 메인 분석 노트북
├── 데이콘_basic_고객_지원_등급_분류.py          # Python 스크립트
└── README.md                                    # 프로젝트 문서
```

## 🚀 실행 방법

### 1. 환경 설정
```bash
pip install pandas scikit-learn pycaret catboost lightgbm xgboost
```

### 2. 노트북 실행
```bash
jupyter notebook 데이콘_Basic_고객_지원_등급_분류.ipynb
```

### 3. Python 스크립트 실행
```bash
python 데이콘_basic_고객_지원_등급_분류.py
```

## 📝 주요 인사이트

1. **클러스터링 효과**: K-Means를 통한 고객 세분화가 모델 성능 향상에 기여
2. **모델 다양성**: 다양한 앙상블 기법을 통한 성능 개선 시도
3. **데이터 전처리**: 표준화와 결측치 처리가 중요
4. **성능 한계**: 하이퍼파라미터 튜닝과 더 다양한 모델 조합 필요

## 🔄 개선 방향

1. **하이퍼파라미터 튜닝**: Optuna 또는 GridSearch를 활용한 최적화
2. **모델 다양성**: 서로 다른 알고리즘 계열의 모델 조합
3. **특성 공학**: 도메인 지식을 활용한 추가 파생변수 생성
4. **앙상블 기법**: Voting, Bagging 등 다양한 앙상블 방법 시도

## 📊 결과 해석

이 프로젝트는 고객 지원 등급 분류를 위한 머신러닝 파이프라인을 구축했습니다. 클러스터링 기반 특성 공학과 다양한 앙상블 기법을 통해 모델 성능을 향상시키려 했으나, 추가적인 하이퍼파라미터 튜닝과 모델 다양성 확보가 필요함을 확인했습니다.

## 👨‍💻 작성자

KevinCY-Kim

## 📅 프로젝트 기간

2025년 10월 17일

---

*이 프로젝트는 데이콘 Basic 고객 지원 등급 분류 대회를 위한 머신러닝 솔루션입니다.*
