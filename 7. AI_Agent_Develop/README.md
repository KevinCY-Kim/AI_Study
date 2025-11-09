# 🤖 AI Agent 개발·실험 통합 가이드

이 디렉토리는 AI 에이전트(챗봇, 페르소나 등) 개발·실험을 위한 다양한 Colab/Jupyter 노트북과 샘플 Python 스크립트, 개발/코딩 규칙을 구조적으로 정리해둔 공간입니다.

## 📁 폴더/파일 구성 및 목적
- **API키_보관방법.ipynb** : 보안 안전하게 API Key를 관리·적용하는 실용 예제
- **CLI를_사용한_챗봇.ipynb** : 터미널 기반 챗봇 인터랙션 실습 예제
- **FastAPI웹챗봇.ipynb** : 웹서버 프레임워크 기반 실제 챗봇 배포 예시
- **Local코파일럿구축검토.ipynb** : 로컬 개발 환경에서 코파일럿 시스템 셋업 검토
- **openaitest.py** : OpenAI Python SDK 연결 샘플, 기본 테스트 코드
- **어린왕자_페르소나_추가.ipynb** : '어린 왕자' 페르소나 기반 챗봇/프롬프트 예시 구현
- **챗봇이_이전대화를_기억.ipynb** : 컨텍스트 기반 문맥/메모리 기억 챗봇 실험
- **커서AI룰.ipynb** : 프로젝트 일관된 개발 규칙, 품질·보안·코딩 스타일 안내 및 참고

## 📝 빠른 시작 · 실습 안내
- Google Colab, Jupyter에서 직접 노트북 파일 실행·테스트
- 각 노트북은 Colab badge(상단 링크) 클릭 시 클라우드 환경에서 즉시 RUN 가능
- openaitest.py로 OpenAI SDK 정상 연결여부 간단 검증

## 🏷️ 주요 규칙 문서 안내
- 커서AI룰.ipynb 내부 Project Rule, User Rule 등 개발 표준 수록
- 외부 입력 검증·에러 핸들링·단일 책임 설계·SOLID·Async 패턴 등 실제 적용 예

## 👀 실전 예제/페르소나 챗봇
- 챗봇이_이전대화를_기억.ipynb : 상태 기반 응답 정교화, 세션/기억 활용법
- 어린왕자_페르소나_추가.ipynb : 캐릭터 페르소나 적용, 명확한 대화 규칙화

## 📚 관련 참고자료/외부 가이드
- [OpenAI 공식 Python SDK](https://platform.openai.com/docs/quickstart?lang=python)
- [FastAPI 공식 문서](https://fastapi.tiangolo.com/ko/)
- [AI 챗봇 설계 트렌드: 오픈AI 블로그](https://openai.com/blog/)
- Colab/Jupyter 사용법: [Google Colab 도움말](https://research.google.com/colaboratory/faq.html)

> 전체 코드는 실습/실전 경험을 위한 교육용 예제 중심입니다. 회사/실무 적용 전, 각 문서의 커서AI룰, 보안 키 관리 방법, 외부 공식 문서 링크를 참고해 주세요.
