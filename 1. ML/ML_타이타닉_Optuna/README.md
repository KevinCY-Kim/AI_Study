# 🛳 Titanic Survival Prediction with Optuna

## 프로젝트 개요
- **목적**: 타이타닉 생존자 예측 (Titanic: Machine Learning from Disaster)
- **주요 내용**: 머신러닝 전처리~모델링~Optuna 하이퍼파라미터 튜닝까지 실습
- **데이터**: titanic.csv

## 주요 기능 및 코드

### 1. 데이터 로드 및 전처리
```python
import pandas as pd

df = pd.read_csv("titanic.csv")
df["Age"] = df["Age"].fillna(df["Age"].mean())
df["Embarked"] = df["Embarked"].fillna("S")
# 범주형 변수 원-핫 인코딩
X = pd.get_dummies(df[["Pclass", "Sex", "Age", "SibSp", "Parch", "Fare", "Embarked"]])
y = df["Survived"]
```

### 2. 데이터 분할 및 스케일링
```python
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import RobustScaler

X_train, X_valid, y_train, y_valid = train_test_split(X, y, test_size=0.2, shuffle=True)
scaler = RobustScaler()
X_train = scaler.fit_transform(X_train)
X_valid = scaler.transform(X_valid)
```

### 3. 기본 모델 학습 및 평가
```python
from sklearn.linear_model import LogisticRegression
from sklearn.ensemble import RandomForestClassifier
from xgboost import XGBClassifier
from sklearn.metrics import accuracy_score

models = {
    'Logistic Regression': LogisticRegression(),
    'Random Forest': RandomForestClassifier(),
    'XGBoost': XGBClassifier()
}
for name, model in models.items():
    model.fit(X_train, y_train)
    pred = model.predict(X_valid)
    print(f"{name} Accuracy: {accuracy_score(y_valid, pred):.4f}")
```

### 4. Optuna 하이퍼파라미터 튜닝 예시
```python
import optuna
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score

def objective(trial):
    n_estimators = trial.suggest_int('n_estimators', 50, 200)
    max_depth = trial.suggest_int('max_depth', 2, 10)
    clf = RandomForestClassifier(n_estimators=n_estimators, max_depth=max_depth)
    clf.fit(X_train, y_train)
    pred = clf.predict(X_valid)
    return accuracy_score(y_valid, pred)

study = optuna.create_study(direction="maximize")
study.optimize(objective, n_trials=30)
print("Best params:", study.best_params)
print("Best accuracy:", study.best_value)
```

### 5. 결과 요약
- Optuna 튜닝 후 상위 모델 성능:
  - Logistic Regression: 78.5%
  - Random Forest (Optuna): 82.1%
  - XGBoost (Optuna): 83.4%
  - XGBoost + StratifiedKFold + 튜닝: 85% 이상

---

## 참고/실행 방법
- Jupyter에서 `ML_타이타닉__Optuna.ipynb`, `ML_타이타닉__Optuna_하이퍼파라미터튜닝.ipynb` 실행
- 데이터: titanic.csv

## 주요 코드/노트북
- [ML_타이타닉__Optuna.ipynb](./ML_타이타닉__Optuna.ipynb)
- [ML_타이타닉__Optuna_하이퍼파라미터튜닝.ipynb](./ML_타이타닉__Optuna_하이퍼파라미터튜닝.ipynb)















