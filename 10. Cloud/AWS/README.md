# 💬 Web Chatbot

## 프로젝트 개요
- **목적**: 간단한 웹 챗봇 구현
- **주요 내용**: FastAPI 기반 챗봇 웹서버, 템플릿 렌더링

## 주요 기능 및 코드

### 1. FastAPI 웹서버 구조 (예시)
```python
from fastapi import FastAPI, Request
from fastapi.templating import Jinja2Templates
app = FastAPI()
templates = Jinja2Templates(directory="templates")
@app.get("/")
def index(request: Request):
    return templates.TemplateResponse("index.html", {"request": request})
```

### 2. 챗봇 응답 처리 (main.py)
```python
# main.py에서 챗봇 응답 처리 로직 구현
```

---

## 참고/실행 방법
- main.py, templates/index.html 참고
