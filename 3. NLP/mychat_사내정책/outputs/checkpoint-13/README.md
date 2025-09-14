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

# 🧩 outputs/checkpoint-13: LLM 파인튜닝 체크포인트 상세

## 개요
- **목적**: unsloth 기반 LLM 파인튜닝 실험의 epoch 13 체크포인트 결과
- **주요 내용**: LoRA/PEFT 어댑터, config, 토크나이저, 학습 상태, 하이퍼파라미터, 실험 환경, wandb 연동 등

## 주요 파일/구성
- adapter_model.safetensors : epoch 13 기준 파인튜닝된 어댑터 가중치
- adapter_config.json : PEFT/LoRA 설정 (target_modules, lora_alpha, r 등)
- tokenizer_config.json, tokenizer.json : 토크나이저 정보
- trainer_state.json, training_args.bin : 학습 상태, 하이퍼파라미터
- README.md : 체크포인트 상세 설명, 실험 환경, 활용법

## 실험 환경/하이퍼파라미터
- base_model_name_or_path: unsloth/llama-3.2-1b-bnb-4bit
- lora_alpha: 16, r: 16, target_modules: [q_proj, k_proj, o_proj, gate_proj, v_proj, down_proj, up_proj]
- task_type: CAUSAL_LM
- inference_mode: true
- epoch: 13

## 실험 결과/성능
- wandb/ : 실험 로그, 하이퍼파라미터, 성능 추이, 체크포인트 관리
- trainer_state.json : 학습 loss, 평가 loss, 성능 추이 기록

## 추론/재현 방법
```python
from transformers import pipeline
# LoRA/PEFT 어댑터 적용 후 pipeline 추론
```

## 참고/실행 방법
- wandb/ 참고 (실험 로그, 성능 추이)
- outputs/README.md, adapter_config.json 참고