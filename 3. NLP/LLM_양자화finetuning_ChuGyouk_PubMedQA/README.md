# ChuGyouk PubMedQA 데이터셋을 활용한 LLM 파인튜닝

이 프로젝트는 한국어 의료 질문답변 데이터셋인 **ChuGyouk/PubMedQA-test-Ko**를 활용하여 Llama-3.1-8B 모델을 파인튜닝하는 프로젝트입니다. Unsloth 라이브러리를 사용하여 메모리 효율적이고 빠른 학습을 구현했습니다.

## 📋 프로젝트 개요

### 주요 특징
- **4비트 양자화**: 메모리 사용량 최적화를 위한 4비트 사전 양자화된 모델 사용
- **LoRA 파인튜닝**: 경량화된 파라미터 효율적 파인튜닝 기법 적용
- **Unsloth 최적화**: 2배 빠른 학습 속도와 메모리 효율성 제공
- **의료 도메인 특화**: PubMedQA 한국어 데이터셋으로 의료 질문답변 성능 향상

### 기술 스택
- **모델**: Meta-Llama-3.1-8B (4비트 양자화)
- **프레임워크**: Unsloth, Transformers, PEFT
- **데이터셋**: ChuGyouk/PubMedQA-test-Ko
- **최적화**: LoRA, Gradient Checkpointing, 4비트 양자화

## 🚀 빠른 시작

### 환경 설정

```bash
# 필요한 패키지 설치
pip install unsloth
pip install -U transformers accelerate peft trl
pip install datasets
```

### 실행 방법

#### Jupyter Notebook 실행
```bash
jupyter notebook ChuGyouk_PubMedQA_LLM_finetuning.ipynb
```

#### Python 스크립트 실행
```bash
python chugyouk_pubmedqa_llm_finetuning.py
```

## ⚙️ 핵심 설정

### LoRA 파라미터 (메모리 절약형 설정)
```python
model = FastLanguageModel.get_peft_model(
    model,
    r=8,                                    # 낮은 LoRA rank로 과적합 방지
    target_modules=["q_proj", "v_proj"],   # 핵심 어텐션 부분만 학습
    lora_alpha=16,                          # 안정적 수렴을 위한 중간 수준
    lora_dropout=0.05,                      # 일반화 향상을 위한 규제
    bias="none",                            # 불필요한 bias 학습 비활성화
    use_gradient_checkpointing="unsloth",   # GPU 메모리 절약
    use_rslora=False,                       # 속도 우선 설정
)
```

### 학습 하이퍼파라미터
```python
training_args = TrainingArguments(
    output_dir="./finetuned_pubmedqa",
    num_train_epochs=3,
    per_device_train_batch_size=1,         # VRAM 한계 고려
    gradient_accumulation_steps=4,         # 효과적인 배치 크기 확보
    learning_rate=2e-4,
    fp16=True,                             # 4비트 양자화 모델 필수
    optim="paged_adamw_8bit",              # 메모리 효율적 옵티마이저
    lr_scheduler_type="cosine",
)
```

## 📊 데이터셋 정보

### ChuGyouk/PubMedQA-test-Ko
- **도메인**: 의료 질문답변
- **언어**: 한국어
- **구조**: 
  - `QUESTION`: 의료 관련 질문
  - `LONG_ANSWER`: 상세한 답변
  - `CONTEXTS`: 관련 문헌 정보
  - `final_decision`: 예/아니오 결정

### 프롬프트 템플릿
```python
alpaca_prompt = """아래에는 하나의 질문과 이에 대한 적절한 답변을 작성해야 하는 지시문이 있습니다.
지시문을 읽고, 요청에 가장 잘 맞는 답변을 한국어로 작성하세요.

### 지시문(Instruction):
{}

### 답변(Response):
{}"""
```

## 🔧 최적화 전략

### 메모리 효율성
1. **4비트 양자화**: 모델 크기와 메모리 사용량 대폭 감소
2. **LoRA**: 전체 파라미터 대신 적응형 레이어만 학습
3. **Gradient Checkpointing**: 메모리 사용량 추가 절약
4. **Paged AdamW**: 옵티마이저 메모리 압축

### 학습 속도 최적화
1. **Unsloth 패치**: 2배 빠른 학습 속도
2. **선택적 모듈 학습**: q_proj, v_proj만 학습으로 속도 향상
3. **낮은 LoRA rank**: 적은 파라미터로 빠른 수렴

## 📁 파일 구조

```
LLM_양자화finetuning_ChuGyouk_PubMedQA/
├── ChuGyouk_PubMedQA_LLM_finetuning.ipynb  # Jupyter 노트북
├── chugyouk_pubmedqa_llm_finetuning.py     # Python 스크립트
└── README.md                               # 프로젝트 문서
```

## 🎯 학습 결과

- **학습 가능한 파라미터**: 3,407,872개 (전체의 0.04%)
- **학습 시간**: 약 75 스텝 (100 샘플, 3 에포크)
- **메모리 사용량**: 최적화된 설정으로 GPU 메모리 효율적 사용

## 📚 참고 자료

### 기술 문서
- [Unsloth 공식 문서](https://github.com/unslothai/unsloth)
- [Hugging Face Unsloth 모델 허브](https://huggingface.co/unsloth)
- [LoRA 논문](https://arxiv.org/abs/2106.09685)
- [4비트 양자화 논문](https://arxiv.org/abs/2305.14314)

### 데이터셋
- [ChuGyouk/PubMedQA-test-Ko](https://huggingface.co/datasets/ChuGyouk/PubMedQA-test-Ko)
- [PubMedQA 원본 논문](https://arxiv.org/abs/1909.06146)

### 관련 라이브러리
- [Transformers](https://huggingface.co/docs/transformers/)
- [PEFT](https://huggingface.co/docs/peft/)
- [Datasets](https://huggingface.co/docs/datasets/)

## ⚠️ 주의사항

1. **GPU 메모리**: 최소 8GB VRAM 권장 (Tesla T4 이상)
2. **데이터 크기**: 현재 100개 샘플로 제한 (전체 데이터셋 사용 시 메모리 고려 필요)
3. **양자화 손실**: 4비트 양자화로 인한 성능 손실 가능성
4. **과적합**: 작은 데이터셋으로 인한 과적합 위험

## 🔄 향후 개선 방향

1. **데이터 확장**: 전체 데이터셋 활용
2. **하이퍼파라미터 튜닝**: 더 정교한 학습 설정
3. **평가 메트릭**: 의료 도메인 특화 평가 지표 도입
4. **모델 비교**: 다양한 모델 아키텍처 실험

## 📄 라이선스

이 프로젝트는 교육 및 연구 목적으로 제작되었습니다. 사용 시 관련 라이선스를 확인하시기 바랍니다.

---

**작성자**: By Kevin.CY.Kim  
**최종 업데이트**: 2025년 10월
