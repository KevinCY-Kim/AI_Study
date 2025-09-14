# 🤖 mychat_사내정책: LLM 파인튜닝 & 챗봇 실험 통합 프로젝트

## 폴더 개요
- **목적**: 사내 정책/웰니스 데이터 기반 LLM 파인튜닝, 챗봇, 다양한 실험 및 실험 관리
- **주요 내용**: 웰니스 챗봇, outputs(파인튜닝 결과), 샘플 데이터, unsloth 기반 파인튜닝, wandb 실험 관리 등

## 폴더/파일 구조 및 역할
- `웰니스1/` : 웰니스 챗봇 파인튜닝 결과(어댑터, 토크나이저, config 등)
- `outputs/` : unsloth 기반 LLM 파인튜닝 결과(체크포인트, config, 토크나이저, safetensors, README 등)
- `sample_data/` : 실험용 샘플 데이터셋 (MNIST, 캘리포니아 주택, Anscombe 등)
- `unsloth_compiled_cache/` : unsloth 관련 커스텀 Trainer/코드
- `wandb/` : Weights & Biases 실험 관리 로그/결과
- `웰니스1.csv` : 웰니스 챗봇 파인튜닝용 원본 데이터

## 주요 실험 및 코드 흐름

### 1. 데이터 준비 및 확인
```python
import pandas as pd
df = pd.read_csv("웰니스1.csv", encoding="utf-8")
df.head()
```

### 2. LLM 파인튜닝 (unsloth 기반)
```python
from unsloth import FastLanguageModel
model, tokenizer = FastLanguageModel.from_pretrained(
    model_name = "unsloth/Llama-3.2-1B-bnb-4bit",
    max_seq_length = 2048,
    dtype = None,
    load_in_4bit = True
)
# PEFT 파인튜닝, 하이퍼파라미터, Trainer 등은 outputs/checkpoint-13/adapter_config.json 참고
```

### 3. 파인튜닝 결과 저장 및 활용
- outputs/checkpoint-13/ : safetensors, config, 토크나이저, 학습 상태, README 등 포함
- 웰니스1/ : 어댑터, 토크나이저, config 등 저장

### 4. 챗봇 추론 및 평가
```python
from transformers import pipeline
generator = pipeline("text-generation", model=model, tokenizer=tokenizer, device="cuda")
output = generator("웰니스 챗봇에게 질문", max_new_tokens=128)
print(output)
```

### 5. 실험 관리 및 결과 시각화
- wandb/ : 실험 로그, 하이퍼파라미터, 성능 추이, 체크포인트 관리
- outputs/README.md : 파인튜닝 모델 카드, 퀵스타트, 프레임워크 버전, 실험 링크 등

### 6. 샘플 데이터 활용
- sample_data/README.md : 다양한 공개 데이터셋 설명 및 활용 예시

### 7. 커스텀 Trainer/코드
- unsloth_compiled_cache/ : unsloth 기반 커스텀 Trainer, SFTTrainer 등 구현

---

## 참고/실행 방법
- 각 실험별 상세 README, 노트북, outputs/README.md, 웰니스1/README.md 참고
- wandb를 통한 실험 관리 및 시각화 가능

## 주요 코드/노트북/링크
- [웰니스1/README.md](./웰니스1/README.md)
- [outputs/README.md](./outputs/README.md)
- [outputs/checkpoint-13/README.md](./outputs/checkpoint-13/README.md)
- [sample_data/README.md](./sample_data/README.md)
- [unsloth_compiled_cache/UnslothSFTTrainer.py](./unsloth_compiled_cache/UnslothSFTTrainer.py)
- [wandb/](./wandb/)
