# ⚡ 모델 최적화 & XAI 실습

## 프로젝트 개요
- **목적**: 모델 경량화, 변환, XAI 실습
- **주요 내용**: 프루닝, 양자화, ONNX/TFLite 변환, GradCAM 등 XAI

## 주요 기능 및 코드

### 1. 모델 경량화 (프루닝, 양자화)
```python
import torch.nn.utils.prune as prune
# 프루닝 적용 예시
prune.l1_unstructured(model.conv1, name='weight', amount=0.3)
# 양자화 예시
quantized_model = torch.quantization.quantize_dynamic(model, {nn.Linear}, dtype=torch.qint8)
```

### 2. ONNX/TFLite 변환
```python
import torch.onnx
# ONNX 변환
torch.onnx.export(model, sample_input, "model.onnx", ...)
# TFLite 변환 (ONNX → TF → TFLite)
```

### 3. XAI (GradCAM)
```python
from pytorch_grad_cam import GradCAM
# GradCAM 시각화 예시
```

---

## 참고/실행 방법
- Jupyter에서 `모델최적화와_컨버트_XAI.ipynb` 실행

## 주요 코드/노트북
- [모델최적화와_컨버트_XAI.ipynb](./모델최적화와_컨버트_XAI.ipynb)
