# AI Agent with LangGraph

이 폴더는 LangGraph를 활용해 에이전트 워크플로우를 구성하는 예제들을 담고 있습니다. 노드/엣지 정의, 상태(state) 관리, 도구 호출(tool calling), 브랜칭/루프 등 멀티스텝 파이프라인을 실습합니다.

## 구성(예시)
- `nodes/`: 작업 단위를 수행하는 노드 함수 모음
- `edges/`: 노드 간 전이 로직 및 조건 분기
- `tools/`: 외부 API/DB/파일 IO 등 도구 호출 래퍼
- `graphs/`: LangGraph 그래프 정의와 실행 엔트리포인트
- `notebooks/`: 실습용 Jupyter 노트북

프로젝트 템플릿은 예시이며, 실제 구조는 하위 예제별로 다를 수 있습니다.

## 빠른 시작
- 권장 파이썬: Python 3.10–3.12
- 루트에서 공통 의존성 설치:
  - `pip install -r ../../requirements.txt`
- 추가/특정 의존성은 각 예제의 README 혹은 노트북 상단을 참고하세요.

## 실행(예시)
```bash
python -m graphs.run_example
```

## 참고
- LangGraph 문서: https://langchain-ai.github.io/langgraph/
- LangChain 문서: https://python.langchain.com/

## License
- 본 폴더의 내용은 저장소 라이선스(CC BY 4.0)를 따릅니다. 사용 시 반드시 출처를 명시해 주세요.
