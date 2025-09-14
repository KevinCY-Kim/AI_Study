---
base_model: unsloth/llama-3.2-1b-bnb-4bit
library_name: transformers
model_name: outputs
tags:
- generated_from_trainer
- sft
- unsloth
- trl
licence: license
---

# 🏷️ outputs: unsloth 기반 LLM 파인튜닝 결과

## 개요
- **목적**: unsloth/llama-3.2-1b-bnb-4bit 기반 LLM 파인튜닝 결과 및 실험 관리
- **주요 내용**: SFT(지도 파인튜닝), LoRA, PEFT, 실험 환경/하이퍼파라미터/결과/모델 카드/추론 예시 등

## 퀵스타트 (추론 예시)
```python
from transformers import pipeline
question = "If you had a time machine, but could only go to the past or the future once and never return, which would you choose and why?"
generator = pipeline("text-generation", model="outputs", device="cuda")
output = generator([{"role": "user", "content": question}], max_new_tokens=128, return_full_text=False)[0]
print(output["generated_text"])
```

## 주요 파일/구성
- adapter_model.safetensors : 파인튜닝된 LoRA/PEFT 어댑터 가중치
- adapter_config.json : PEFT/LoRA 설정 (target_modules, lora_alpha, r 등)
- tokenizer_config.json, tokenizer.json : 토크나이저 정보
- trainer_state.json, training_args.bin : 학습 상태, 하이퍼파라미터
- README.md : 모델 카드, 실험 환경, 활용법

## 실험 환경/프레임워크
- TRL: 0.22.2
- Transformers: 4.56.0
- Pytorch: 2.8.0+cu126
- Datasets: 3.6.0
- Tokenizers: 0.22.0

## 주요 하이퍼파라미터 (adapter_config.json)
- base_model_name_or_path: unsloth/llama-3.2-1b-bnb-4bit
- lora_alpha: 16, r: 16, target_modules: [q_proj, k_proj, o_proj, gate_proj, v_proj, down_proj, up_proj]
- task_type: CAUSAL_LM
- inference_mode: true

## 실험 결과/활용
- outputs/checkpoint-13/ : 각 epoch별 체크포인트, safetensors, config, 토크나이저, 학습 상태, README 등
- wandb/ : 실험 로그, 하이퍼파라미터, 성능 추이, 체크포인트 관리

## 참고/실행 방법
- outputs/checkpoint-13/README.md, wandb/ 참고
- 파인튜닝된 모델로 pipeline 추론, LoRA/PEFT 어댑터 활용 가능

## 관련 링크
- [outputs/checkpoint-13/README.md](./checkpoint-13/README.md)
- [wandb/](../../wandb/)