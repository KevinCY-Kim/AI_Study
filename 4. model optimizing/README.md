# ⚡ 모델 최적화 & XAI 실습 (상세)

## 프로젝트 개요
- **목적**: 모델 경량화, 변환, XAI 실습 및 실전 배포
- **주요 내용**: 프루닝, 양자화, ONNX/TFLite 변환, GradCAM 등 XAI, 모바일/웹 배포, 실험 결과 비교

## 실험별 상세 설명 및 코드

### 1. 모델 경량화 (프루닝, 양자화)
- **프루닝**: 불필요한 가중치 제거로 모델 크기/연산량 감소
- **양자화**: 32bit → 8bit 등으로 모델 경량화, 추론 속도 향상
```python
import torch.nn.utils.prune as prune
prune.l1_unstructured(model.conv1, name='weight', amount=0.3)
quantized_model = torch.quantization.quantize_dynamic(model, {nn.Linear}, dtype=torch.qint8)
```
- **실험 결과**: 프루닝/양자화 전후 정확도, 모델 크기, 추론 속도 비교 (노트북 내 그래프/출력 참고)

### 2. ONNX/TFLite 변환 및 배포
- **ONNX 변환**: PyTorch → ONNX → (TensorFlow) → TFLite
```python
import torch.onnx
torch.onnx.export(model, sample_input, "model.onnx", ...)
```
- **TFLite 변환**: ONNX → TF → TFLite 변환 스크립트/코드 포함
- **모바일/웹 배포**: TorchScript, TFLite, ONNX 모델을 Android, Web 등에서 활용하는 예시 코드/설명 포함

### 3. XAI (GradCAM 등)
- **GradCAM**: CNN 계열 모델의 시각적 설명 (중요 영역 하이라이트)
```python
from pytorch_grad_cam import GradCAM
# GradCAM 시각화 예시
```
- **실험 결과**: GradCAM 시각화 이미지, XAI 해석 결과 (노트북 내 출력 참고)

### 4. 실험 결과/비교/활용
- 각 실험별 정확도, 모델 크기, 추론 속도, 시각화 결과 등 비교/분석
- 실험별 코드/노트북에서 상세 결과 확인 가능

---

## 참고/실행 방법
- Jupyter에서 `모델최적화와_컨버트_XAI.ipynb` 실행 (모든 실험/코드/결과 포함)
- Android, Web 등 배포 예시 코드/설명 포함

## 주요 코드/노트북/링크
- [모델최적화와_컨버트_XAI.ipynb](./모델최적화와_컨버트_XAI.ipynb)
