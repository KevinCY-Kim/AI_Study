# 🕵️ 객체인식 (YOLOv8, FastAPI)

## 프로젝트 개요
- **목적**: 실시간 객체 인식 및 웹서버 구현
- **주요 내용**: YOLOv8 기반 객체 탐지, FastAPI 웹서버, 웹캠/이미지 실시간 탐지

## 주요 기능 및 코드

### 1. YOLOv8 모델 로드 및 객체 탐지
```python
from ultralytics import YOLO
model = YOLO('yolov8s.pt')
results = model('test.jpg')
results.show()
```

### 2. FastAPI 웹서버 구조 (예시)
```python
from fastapi import FastAPI, Request
from fastapi.templating import Jinja2Templates
from starlette.responses import StreamingResponse
app = FastAPI()
templates = Jinja2Templates(directory="templates")
@app.route('/')
def index(request: Request):
    return templates.TemplateResponse("index.html", {'request': request})
```

### 3. 웹캠 실시간 객체 탐지 (camera.py)
```python
from ultralytics import YOLO
import cv2
model = YOLO('yolov8s.pt')
# VideoCamera 클래스에서 프레임별로 객체 탐지
```

### 4. 주요 폴더/코드
- realtime_web, webcam_server, webcam_server2: FastAPI 기반 실시간 탐지 서버 예제
- 객체인식_yolov12.ipynb: 다양한 YOLO 실험 노트북

---

## 참고/실행 방법
- main.py, camera.py, templates/index.html 참고
- Jupyter에서 `객체인식_yolov12.ipynb` 실행
