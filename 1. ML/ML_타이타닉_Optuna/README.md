# 🛳 Titanic Survival Prediction with Optuna

이 프로젝트는 **타이타닉 생존자 예측(Titanic: Machine Learning from Disaster)** 문제를 기반으로,  
머신러닝 풀 프로세스를 거쳐 Optuna를 활용해 모델 하이퍼파라미터 최적화를 수행한 예제입니다.  

---

## 📌 프로젝트 개요
- **데이터셋**: Titanic (`titanic.csv`)
- **목표**: 승객의 생존 여부(`Survived`)를 예측
- **주요 기법**: 데이터 전처리 → 특성 선택 → 모델 학습 → Optuna 하이퍼파라미터 최적화 → 성능 개선 전략 적용

---

## ⚙️ 기술 스택
- Python 3.x
- Pandas, Numpy (데이터 처리)
- Scikit-learn (모델링 및 평가)
- Optuna (자동 하이퍼파라미터 최적화)

---

## 📂 프로젝트 구조
```bash
ML_타이타닉__Optuna.ipynb                 # Optuna 기반 기본 최적화 실험
ML_타이타닉__Optuna_하이퍼파라미터튜닝.ipynb # 성능 개선 전략을 활용한 확장 버전
titanic.csv                               # 원본 데이터셋
README.md                                 # 프로젝트 설명 문서
```

---

## 🚀 실행 방법
1. 저장소를 클론 또는 다운로드:
   ```bash
   git clone <repo_url>
   cd titanic-optuna
   ```
2. 노트북 실행:
   ```bash
   jupyter notebook ML_타이타닉__Optuna.ipynb
   jupyter notebook ML_타이타닉__Optuna_하이퍼파라미터튜닝.ipynb
   ```

---

## 🔎 주요 단계
* 1. 데이터 전처리

Age: 평균으로 결측치 보정

Embarked: 최빈값('S')으로 대체

범주형 변수(Sex, Embarked) → 원-핫 인코딩 적용

* 2. Feature & Target 정의

Feature: Pclass, Sex, Age, SibSp, Parch, Fare, Embarked

Target: Survived

* 3. 모델 학습

기본 모델: Logistic Regression, RandomForestClassifier, XGBoost 등

Optuna를 활용해 하이퍼파라미터 탐색

* 4. Optuna 최적화
   ```bash
import optuna

study = optuna.create_study(direction="maximize")
study.optimize(objective, n_trials=50)

print(study.best_params)
print(study.best_value)
```

* 5. 결과

Optuna 최적화 후 상위 성능 모델의 파라미터와 Accuracy 기록

베이스라인 대비 성능 향상 확인

Model	Accuracy
Logistic Regression	78.5%
Random Forest (Optuna 최적화)	82.1%
XGBoost (Optuna 최적화)	83.4%
XGBoost + StratifiedKFold + 튜닝 85% 이상

* ✨ 배운 점과 향후 방향

Optuna는 직관적이며, 다양한 모델의 하이퍼파라미터 탐색에 유용하다.
기본 모델 대비 성능 향상을 쉽게 확인할 수 있었다.
향후 AutoML 라이브러리(PyCaret, AutoGluon 등)와의 비교 실험에 유용 할 것으로 판단된다.















