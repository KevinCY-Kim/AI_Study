# 🏢 사내규정 챗봇 (웰니스/LLM)

## 프로젝트 개요
- **목적**: 웰니스/사내규정 데이터 기반 LLM 챗봇 파인튜닝 실습
- **주요 내용**: 데이터 전처리, LLM 파인튜닝, 추론, 평가
- **데이터**: 웰니스1.csv 등

## 주요 기능 및 코드

### 1. 데이터 로드
```python
import pandas as pd
df = pd.read_csv("웰니스1.csv", encoding="utf-8")
df.head()
```

### 2. LLM 파인튜닝 예시
```python
from unsloth import FastLanguageModel
model, tokenizer = FastLanguageModel.from_pretrained(
    model_name = "unsloth/Llama-3.2-1B-bnb-4bit",
    max_seq_length = 2048,
    dtype = None,
    load_in_4bit = True
)
# 파인튜닝 코드 (노트북 참고)
```

### 3. 추론 및 평가
```python
# 파인튜닝된 모델로 챗봇 응답 생성
```

---

## 참고/실행 방법
- Jupyter에서 `웰니스_교체사내규정.ipynb` 실행
- 데이터: 웰니스1.csv

## 주요 코드/노트북
- [웰니스_교체사내규정.ipynb](./웰니스_교체사내규정.ipynb)
- [웰니스_교체사내규정.py](./웰니스_교체사내규정.py)
