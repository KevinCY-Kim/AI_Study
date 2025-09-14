# 🍷 Wine Classification (MLP)

## 프로젝트 개요
- **목적**: 와인 데이터셋을 활용한 다중 분류 실습
- **주요 내용**: MLP(다층 퍼셉트론) 기반 분류, 성능 평가
- **데이터**: wine.csv

## 주요 기능 및 코드

### 1. 데이터 로드 및 전처리
```python
import pandas as pd
df = pd.read_csv("wine.csv")
X = df.drop("target", axis=1)
y = df["target"]
```

### 2. 데이터 분할 및 스케일링
```python
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, shuffle=True)
scaler = StandardScaler()
X_train = scaler.fit_transform(X_train)
X_test = scaler.transform(X_test)
```

### 3. MLP 모델 학습 및 평가
```python
from sklearn.neural_network import MLPClassifier
from sklearn.metrics import accuracy_score
mlp = MLPClassifier(hidden_layer_sizes=(64, 32), max_iter=200, random_state=42)
mlp.fit(X_train, y_train)
pred = mlp.predict(X_test)
print("MLP Accuracy:", accuracy_score(y_test, pred))
```

### 4. 결과 요약
- MLP 분류 정확도: (실행 결과 참조)

---

## 참고/실행 방법
- Jupyter에서 `MLP_code for wine.ipynb` 실행
- 데이터: wine.csv

## 주요 코드/노트북
- [MLP_code for wine.ipynb](./MLP_code for wine.ipynb)
