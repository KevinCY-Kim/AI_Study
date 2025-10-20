# YOLOv8 기반 이상치 탐지 프로젝트

이 프로젝트는 YOLOv8 모델을 사용하여 상자 결함을 탐지하는 이상치 탐지 시스템입니다. Roboflow에서 제공하는 "Detecting Defected Boxes" 데이터셋을 사용하여 모델을 학습시킵니다.

## 📋 프로젝트 개요

- **목적**: YOLOv8 모델을 이용한 상자 결함 탐지
- **데이터셋**: Roboflow "Detecting Defected Boxes" 데이터셋
- **모델**: YOLOv8n (nano 버전)
- **클래스 수**: 2개 (정상/결함)

## 🚀 주요 기능

### ✅ 요구사항 구현
- [x] **전처리**: 데이터 로딩 및 YOLOv8 형식 변환
- [x] **증강**: 모자이크 증강, 자동 증강 기능
- [x] **Learning Rate Schedule**: 초기 학습률 0.01, 조기 종료 기능
- [x] **조기 종료**: patience=10으로 설정
- [x] **TensorBoard**: 학습 과정 시각화
- [x] **기타 기능**: Roboflow API를 통한 자동 데이터셋 다운로드

### 🔧 기술적 특징
- **모델 아키텍처**: YOLOv8n (경량화된 nano 버전)
- **이미지 크기**: 640x640
- **배치 크기**: 16
- **에포크**: 100
- **GPU 가속**: CUDA 지원

## 📦 설치 및 설정

### 필요한 패키지 설치
```bash
pip install ultralytics
pip install roboflow
pip install clearml  # 선택사항: 실험 추적용
```

### 환경 요구사항
- Python 3.11+
- PyTorch 2.6.0+
- CUDA 지원 GPU (권장)
- 최소 12GB RAM

## 🏃‍♂️ 실행 방법

### 1. 데이터셋 다운로드
```python
from roboflow import Roboflow

rf = Roboflow(api_key="your_api_key")
project = rf.workspace("carboard-boxes-2ihoc").project("detecting-defected-boxes")
dataset = project.version(2).download("yolov8")
```

### 2. 모델 학습
```python
from ultralytics import YOLO

# 모델 초기화
model = YOLO('yolov8n.yaml')

# 학습 시작
model.train(
    data="./Detecting-Defected-Boxes-2/data.yaml",
    imgsz=640,
    epochs=100,
    batch=16,
    patience=10,
    device=0,
    name='box_defect',
    project='runs/train',
    augment=True,
    mosaic=True,
    lr0=0.01,
    val=True,
    save=True,
    verbose=True
)
```

### 3. 결과 시각화
학습 완료 후 다음 파일들이 생성됩니다:
- `confusion_matrix.png`: 혼동 행렬
- `PR_curve.png`: Precision-Recall 곡선
- `F1_curve.png`: F1 스코어 곡선
- `val_batch*_pred.jpg`: 검증 배치 예측 결과

## 📊 모델 성능

학습된 모델의 성능은 다음 지표로 평가됩니다:
- **Precision**: 정밀도
- **Recall**: 재현율
- **F1-Score**: F1 점수
- **mAP**: 평균 정밀도

## 🛠️ 주요 하이퍼파라미터

| 파라미터 | 값 | 설명 |
|----------|-----|------|
| `lr0` | 0.01 | 초기 학습률 |
| `batch` | 16 | 배치 크기 |
| `epochs` | 100 | 최대 에포크 수 |
| `patience` | 10 | 조기 종료 대기 에포크 |
| `imgsz` | 640 | 입력 이미지 크기 |
| `mosaic` | True | 모자이크 증강 활성화 |

## 📁 프로젝트 구조

```
이상치탐지/
├── CV_이상치탐지_YOLOv8모델학습.ipynb  # 메인 학습 노트북
├── README.md                           # 프로젝트 문서
└── runs/train/                        # 학습 결과 저장 디렉토리
    └── box_defect*/                   # 학습 실행별 결과
        ├── confusion_matrix.png
        ├── PR_curve.png
        ├── F1_curve.png
        └── val_batch*_pred.jpg
```

## 🔗 참고 자료

### 공식 문서
- [Ultralytics YOLOv8 공식 문서](https://docs.ultralytics.com/models/yolov8/)
- [YOLOv8 학습 가이드](https://docs.ultralytics.com/modes/train/)
- [YOLOv8 데이터셋 가이드](https://docs.ultralytics.com/datasets/)

### 관련 논문
- [Microsoft COCO: Common Objects in Context](https://arxiv.org/abs/1405.0312)

### 유용한 링크
- [Roboflow 플랫폼](https://roboflow.com/)
- [Ultralytics GitHub](https://github.com/ultralytics/ultralytics)
- [PyTorch 공식 문서](https://pytorch.org/docs/)

## 🚨 주의사항

1. **API 키 보안**: Roboflow API 키는 환경변수로 관리하는 것을 권장합니다.
2. **GPU 메모리**: 배치 크기는 GPU 메모리에 따라 조정하세요.
3. **데이터 경로**: 데이터셋 경로가 올바른지 확인하세요.

## 📝 라이선스

이 프로젝트는 교육 목적으로 제작되었습니다. 상업적 사용 시 관련 라이선스를 확인하세요.

---

**개발자**: AI Study Group  
**최종 업데이트**: 2025년  
**버전**: 1.0.0
