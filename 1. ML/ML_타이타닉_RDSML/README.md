# 🚢 Titanic Survival Prediction (RDSML)

## 프로젝트 개요
- **목적**: 타이타닉 생존자 예측 (RDSML 실습)
- **주요 내용**: 데이터 전처리, 다양한 ML 모델 실험, 성능 평가
- **데이터**: titanic.csv

## 주요 기능 및 코드

### 1. 데이터 로드 및 전처리
```python
import pandas as pd
df = pd.read_csv("titanic.csv")
# 결측치 처리, 범주형 인코딩 등
```

### 2. 데이터 분할
```python
from sklearn.model_selection import train_test_split
X = df.drop("Survived", axis=1)
y = df["Survived"]
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, shuffle=True)
```

### 3. 다양한 ML 모델 실험
```python
from sklearn.linear_model import LogisticRegression
from sklearn.ensemble import RandomForestClassifier
from xgboost import XGBClassifier
models = [LogisticRegression(), RandomForestClassifier(), XGBClassifier()]
for model in models:
    model.fit(X_train, y_train)
    print(model.__class__.__name__, model.score(X_test, y_test))
```

### 4. 결과 요약
- 각 모델별 정확도: (실행 결과 참조)

---

## 참고/실행 방법
- Jupyter에서 `RDSML_타이타닉.ipynb` 실행
- 데이터: titanic.csv

## 주요 코드/노트북
- [RDSML_타이타닉.ipynb](./RDSML_타이타닉.ipynb)
