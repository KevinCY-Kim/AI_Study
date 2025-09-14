---
base_model: unsloth/llama-3.2-1b-bnb-4bit
library_name: peft
pipeline_tag: text-generation
tags:
- base_model:adapter:unsloth/llama-3.2-1b-bnb-4bit
- lora
- sft
- transformers
- trl
- unsloth
---

# 🧠 웰니스 챗봇 LLM 파인튜닝 실습

## 프로젝트 개요
- **목적**: 웰니스 우울증 데이터셋 기반 LLM(unsloth/llama-3.2-1b-bnb-4bit) 파인튜닝 및 챗봇 실험
- **주요 내용**: 데이터 전처리, 파인튜닝, 저장, 추론, 평가
- **데이터**: 웰니스1.csv

## 주요 기능 및 코드

### 1. 데이터 로드
```python
import pandas as pd
df = pd.read_csv("웰니스1.csv", encoding="utf-8")
df.head()
```

### 2. 모델 및 토크나이저 로드 (Unsloth)
```python
from unsloth import FastLanguageModel
model, tokenizer = FastLanguageModel.from_pretrained(
    model_name = "unsloth/Llama-3.2-1B-bnb-4bit",
    max_seq_length = 2048,
    dtype = None,
    load_in_4bit = True
)
```

### 3. 파인튜닝(PEFT)
```python
# PEFT(파라미터 효율적 파인튜닝) 설정 및 학습 코드 (예시)
# ... (실제 학습 코드/하이퍼파라미터는 노트북 참고)
```

### 4. 저장 및 추론
```python
# 모델 저장
model.save_pretrained("웰니스1_adapter")
# 추론 예시
from transformers import pipeline
generator = pipeline("text-generation", model=model, tokenizer=tokenizer, device="cuda")
output = generator("웰니스 챗봇에게 질문", max_new_tokens=128)
print(output)
```

### 5. 평가 및 결과
- 파인튜닝된 모델의 성능, 예시 답변, 평가 결과 등은 노트북/실험 로그 참고

---

## 참고/실행 방법
- Jupyter에서 파인튜닝/추론 코드 실행
- 데이터: 웰니스1.csv

## 주요 코드/노트북
- [웰니스_교체사내규정.ipynb](../사내규정챗봇/웰니스_교체사내규정.ipynb)
- [llama파인튜닝과퓨샷프롬프트_RAG.ipynb](../../llama파인튜닝과퓨샷프롬프트/llama파인튜닝과퓨샷프롬프트_RAG.ipynb)