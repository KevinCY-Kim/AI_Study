# Deeplearning

이 저장소는 머신러닝, 딥러닝, 자연어처리, 모델 최적화, 통계, LangGraph 기반 에이전트, AI 에이전트 개발, 그리고 GraphRAG까지 다양한 실습/프로젝트를 폴더별로 정리한 자료입니다. 각 폴더별로 주요 실습 주제, 구현 기능, 데이터, 대표 코드/노트북, 결과 등을 한눈에 볼 수 있도록 구성했습니다.

## 목차
- [빠른 시작](#빠른-시작)
- [폴더 개요](#폴더-개요)
- [1. ML (머신러닝)](#1-ml-머신러닝)
- [2. CNN (합성곱-신경망)](#2-cnn-합성곱-신경망)
- [3. NLP (자연어처리)](#3-nlp-자연어처리)
- [4. Model Optimizing (모델-최적화)](#4-model-optimizing-모델-최적화)
- [5. AI agent with LangGraph](#5-ai-agent-with-langgraph)
- [6. Statistics (통계)](#6-statistics-통계)
- [7. AI_Agent_Develop (AI 에이전트 개발)](#7-ai_agent_develop-ai-에이전트-개발)
- [8. GraphRAG (그래프 기반 RAG)](#8-graphrag-그래프-기반-rag)

---

## 빠른 시작
- 권장 파이썬: Python 3.10–3.12. 프로젝트별 `README` 또는 노트북 상단 요구사항을 참고하세요.
- 가상환경 생성 예시:
  - `python -m venv .venv && source .venv/bin/activate` (Linux/macOS)
  - `py -m venv .venv && .\.venv\Scripts\activate` (Windows PowerShell)
- 공통 의존성: 루트 `requirements.txt` 참고 (프로젝트별 상이할 수 있음)
  - 설치: `pip install -r requirements.txt`

## 폴더 개요
- `1. ML`: 분류/회귀, AutoML/튜닝, 전처리 실습
- `2. CNN`: 이미지 분류/탐지 등 컴퓨터 비전 실습
- `3. NLP`: 파인튜닝, 프롬프트 엔지니어링, 웹 챗봇 데모
- `4. model optimizing`: 프루닝/양자화/컨버전/XAI/배포 실습
- `5. AI agent with langgraph`: LangGraph로 구성한 AI 에이전트 실험
- `6. Statistics`: 통계 기초/응용 노트 및 예제
- `7. AI_Agent_Develop`: AI 에이전트 개발 실습 및 웹 챗봇 구현
- `8. GraphRAG`: Neo4j 그래프 데이터베이스와 LLM을 활용한 GraphRAG 실습

---

## 1. ML (머신러닝)
- **ML_타이타닉_Optuna**: [README](./1.%20ML/ML_타이타닉_Optuna/README.md)
- **ML_wine**: [README](./1.%20ML/ML_wine/README.md)
- **ML_타이타닉_RDSML**: [README](./1.%20ML/ML_타이타닉_RDSML/README.md)

## 2. CNN (합성곱 신경망)
- **Iris_Image_Classification**: [README](./2.%20CNN/Iris_Image_Classification/README.md)
- **객체인식**: [README](./2.%20CNN/객체인식/README.md)

## 3. NLP (자연어처리)
- **mychat_사내정책**: [README](./3.%20NLP/mychat_사내정책/README.md)
  - 웰니스 챗봇, outputs(파인튜닝 결과), 샘플 데이터, unsloth 기반 파인튜닝, wandb 실험 관리 등
  - 주요 하위 폴더/파일:
    - [웰니스1/README.md](./3.%20NLP/mychat_사내정책/웰니스1/README.md)
    - [outputs/README.md](./3.%20NLP/mychat_사내정책/outputs/README.md)
    - [outputs/checkpoint-13/README.md](./3.%20NLP/mychat_사내정책/outputs/checkpoint-13/README.md)
    - [sample_data/README.md](./3.%20NLP/mychat_사내정책/sample_data/README.md)
- **llama파인튜닝과퓨샷프롬프트**: [README](./3.%20NLP/llama파인튜닝과퓨샷프롬프트/README.md)
- **web_chatbot**: [README](./3.%20NLP/web_chatbot/README.md)
- **web_time**: [README](./3.%20NLP/web_time/README.md)
- **사내규정챗봇**: [README](./3.%20NLP/사내규정챗봇/README.md)

## 4. Model Optimizing (모델 최적화)
- **model optimizing**: [README](./4.%20model%20optimizing/README.md)
  - 프루닝, 양자화, ONNX/TFLite 변환, GradCAM 등 XAI, 모바일/웹 배포, 실험 결과 비교 등 상세 실험/코드/노트북 포함
  - [모델최적화와_컨버트_XAI.ipynb](./4.%20model%20optimizing/모델최적화와_컨버트_XAI.ipynb)

## 5. AI agent with LangGraph
- 폴더: `5. AI agent with langgraph`
- LangGraph를 활용한 에이전트 그래프 구성, 노드/에지 정의, 상태 관리, 도구 호출, 멀티스텝 워크플로우 데모 등을 포함합니다. 각 예제의 `README` 또는 노트북을 참고하세요.

## 6. Statistics (통계)
- 폴더: `6. Statistics`
- 기술통계, 가설검정, 회귀/분산분석, 통계적 추론 등 기본 개념과 코드 예제를 담고 있습니다. 노트/노트북에서 실습 위주로 확인할 수 있습니다.

## 7. AI_Agent_Develop (AI 에이전트 개발)
- 폴더: `7. AI_Agent_Develop`
- AI 에이전트 개발 실습 및 웹 챗봇 구현을 포함합니다.
- 주요 실습 내용:
  - **API키_보관방법.ipynb**: API 키 안전한 관리 방법
  - **CLI를_사용한_챗봇.ipynb**: 명령줄 인터페이스 챗봇 구현
  - **FastAPI웹챗봇.ipynb**: FastAPI 기반 웹 챗봇 서버 구축
  - **Local코파일럿구축검토.ipynb**: 로컬 코파일럿 환경 구축 검토
  - **어린왕자_페르소나_추가.ipynb**: 특정 페르소나를 가진 챗봇 구현
  - **챗봇이_이전대화를_기억.ipynb**: 대화 기록을 유지하는 챗봇 구현

## 8. GraphRAG (그래프 기반 RAG)
- 폴더: `8. GraphRAG`
- **README**: [README](./8.%20GraphRAG/README.md)
- Neo4j 그래프 데이터베이스와 Ollama LLM을 연결한 GraphRAG 실습 프로젝트입니다.
- 주요 기능:
  - **그래프 기반 질문-답변**: 질병과 식단 간의 관계를 그래프로 표현
  - **자동 Cypher 쿼리 생성**: 자연어 질문을 Cypher 쿼리로 변환
  - **다중 홉 탐색**: 1홉, 2홉 등 다양한 깊이의 관계 탐색
  - **효과성 점수 기반 필터링**: 치료 효과 점수를 활용한 정확한 검색
- 기술 스택: Neo4j, Ollama, LangChain, Python
- 실습 파일: `Graph실습.ipynb`

---

각 폴더별 상세 README 및 노트북에서 더 많은 코드와 실험 결과를 확인할 수 있습니다. 필요에 따라 자유롭게 수정/확장해 주세요!

## License
- 이 저장소는 "Creative Commons Attribution 4.0 International (CC BY 4.0)" 라이선스를 따릅니다.
- 자유롭게 사용/수정/재배포할 수 있으나, 사용 시 반드시 출처(저자 및 저장소 링크)를 명시해야 합니다.
- 라이선스 전문: `LICENSE` 파일 또는 <https://creativecommons.org/licenses/by/4.0/deed.ko>
  - "출처: KevinCY-Kim, AI_study (`https://github.com/KevinCY-Kim/AI_study`) - CC BY 4.0"
