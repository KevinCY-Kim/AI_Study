# 📚 NLP(Natural Language Processing) 실습 통합 가이드

이 디렉토리는 LLM 파인튜닝, 챗봇, 의료QA, 시계열, 내규챗봇 등 다양한 NLP 실험·연구 프로젝트별 코드·데이터·구성·실행법을 체계적으로 정리한 공간입니다.

## 📦 주요 하위 프로젝트 요약

### 1. llama파인튜닝과퓨샷프롬프트
- **목적**: Llama LLM 파인튜닝, 검색증강생성(RAG) 실험
- **주요 파일**: llama파인튜닝과퓨샷프롬프트_RAG.ipynb, llama파인튜닝과퓨샷프롬프트_rag.py, requirements.txt
- **주요기술**: unsloth, PyTorch, wellness 데이터셋
- **실행**: ipynb 직접 실행(README/requirements 참고)

### 2. LLM_양자화finetuning_ChuGyouk_PubMedQA
- **목적**: PubMedQA(한국어), Llama-3.1-8B 4비트 양자화, LoRA 파인튜닝
- **주요 파일**: ChuGyouk_PubMedQA_LLM_finetuning.ipynb, chugyouk_pubmedqa_llm_finetuning.py, requirements.txt
- **주요기술**: unsloth, LoRA, 4bit 양자화, 의료질문/답변 데이터
- **실행**: ipynb/py파일 직접 실행

### 3. mychat_사내정책
- **목적**: 사내 정책/웰니스 데이터 기반 LLM 챗봇 구현·파인튜닝·실험 관리
- **주요 폴더/파일**: 웰니스1/, outputs/, sample_data/, unsloth_compiled_cache/, wandb/, 웰니스1.csv 등
- **주요특징**: 웰니스 챗봇, 파인튜닝 결과/로그/데이터/실험 자동화·관리
- **실행**: outputs/ 웰니스1/ 내부 README 및 주요 py/ipynb, wandb 실험 추적 활용

### 4. web_time
- **목적**: LSTM 기반 시계열 예측, FastAPI로 웹서비스 개발 실험
- **주요 파일**: main.py, main copy.py, lstm_stock_forecast.pt, templates/
- **주요특징**: LSTM/시계열/웹서버 예제 Jupyter/Python 코드
- **실행**: main.py/노트북/requirements 참고

### 5. 사내규정챗봇
- **목적**: 웰니스·사내 규정 챗봇 LLM 파인튜닝 실습·평가
- **주요 파일**: 웰니스_교체사내규정.ipynb, 웰니스_교체사내규정.py, requirements.txt, 웰니스1.csv
- **주요특징**: 데이터 로딩, 파인튜닝, 챗봇 추론, 평가 코드
- **실행**: ipynb/py 직접 실행 및 데이터 경로 확인

---
## 📝 공통 실행환경/기술스택
- Python 3.10+/Jupyter/Colab, PyTorch, Huggingface(Transformers/PEFT/Datasets), unsloth, wandb 등(각 프로젝트 requirements/README 확인)

## 🚀 빠른 시작법
1. 각 프로젝트 하위 폴더/README 및 requirements.txt 확인
2. 필요한 환경 설치 후 ipynb(py) 파일 직접 실행
3. 데이터 경로/모델 경로 확인 필수

## 🔗 외부 문서/참고자료
- [Huggingface Transformers](https://huggingface.co/docs/transformers/)
- [Unsloth 공식문서](https://github.com/unslothai/unsloth)
- [PyTorch 공식문서](https://pytorch.org/docs/)
- [Weights & Biases](https://wandb.ai/)

> 실습용 예제, 파인튜닝·챗봇·의료QA 등 실제 배포 전 보안‧성능, 데이터 적합성 반드시 점검하세요.
