# 📊 sample_data: 공개 데이터셋 모음

## 개요
- **목적**: LLM/ML 실험용 공개 데이터셋 제공
- **주요 내용**: 캘리포니아 주택, MNIST, Anscombe 등 다양한 데이터셋 포함

## 데이터셋 설명
- `california_housing_train.csv`, `california_housing_test.csv` : 캘리포니아 주택 가격 예측용 데이터 (1990 US Census)
- `mnist_train_small.csv`, `mnist_test.csv` : MNIST 손글씨 숫자 분류용 샘플 데이터
- `anscombe.json` : Anscombe's quartet (통계적 특이성 시각화용)

## 활용 예시
```python
import pandas as pd
df = pd.read_csv("california_housing_train.csv")
df.head()
```

## 참고 링크
- [캘리포니아 주택 데이터 설명](https://docs.google.com/document/d/e/2PACX-1vRhYtsvc5eOR2FWNCwaBiKL6suIOrxJig8LcSBbmCbyYsayia_DvPOOBlXZ4CAlQ5nlDD8kTaIDRwrN/pub)
- [MNIST 데이터 설명](http://yann.lecun.com/exdb/mnist/)
- [Anscombe's quartet 설명](https://en.wikipedia.org/wiki/Anscombe%27s_quartet)
