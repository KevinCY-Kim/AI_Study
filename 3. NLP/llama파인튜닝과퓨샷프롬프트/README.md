# 🦙 Llama 파인튜닝 & RAG 실습

## 프로젝트 개요
- **목적**: Llama LLM 파인튜닝, RAG(검색증강생성) 실험
- **주요 내용**: LLM 파인튜닝, RAG, 웰니스 데이터셋 활용

## 주요 기능 및 코드

### 1. Llama 파인튜닝 예시
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

### 2. RAG 실험 예시
```python
# RAG(검색증강생성) 실험 코드 (노트북 참고)
```

### 3. 결과 및 평가
- 파인튜닝/추론 결과, 예시 답변 등은 노트북 참고

---

## 참고/실행 방법
- Jupyter에서 `llama파인튜닝과퓨샷프롬프트_RAG.ipynb` 실행

## 주요 코드/노트북
- [llama파인튜닝과퓨샷프롬프트_RAG.ipynb](./llama파인튜닝과퓨샷프롬프트_RAG.ipynb)
- [llama파인튜닝과퓨샷프롬프트_rag.py](./llama파인튜닝과퓨샷프롬프트_rag.py)
