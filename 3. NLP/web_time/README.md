# ⏰ LSTM 시계열 예측 웹서비스

## 프로젝트 개요
- **목적**: LSTM 기반 시계열 예측 및 웹서비스 구현
- **주요 내용**: LSTM 모델로 주가 등 시계열 예측, FastAPI 웹서버

## 주요 기능 및 코드

### 1. LSTM 모델 정의 및 예측
```python
import torch
import torch.nn as nn
class LSTMModel(nn.Module):
    def __init__(self, input_size, hidden_size, num_layers, output_size):
        super(LSTMModel, self).__init__()
        self.lstm = nn.LSTM(input_size, hidden_size, num_layers, batch_first=True)
        self.fc = nn.Linear(hidden_size, output_size)
    def forward(self, x):
        out, _ = self.lstm(x)
        out = self.fc(out[:, -1, :])
        return out
```

### 2. FastAPI 웹서버 구조 (예시)
```python
from fastapi import FastAPI, Request
from fastapi.templating import Jinja2Templates
app = FastAPI()
templates = Jinja2Templates(directory="templates")
@app.get("/")
def index(request: Request):
    return templates.TemplateResponse("index.html", {"request": request})
```

### 3. 예측 결과 시각화 및 출력
```python
# matplotlib 등으로 예측 결과 그래프 생성 및 웹에 표시
```

---

## 참고/실행 방법
- main.py, templates/index.html 참고
- LSTM 모델 학습/예측 코드 포함
