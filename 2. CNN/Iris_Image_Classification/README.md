# 🌸 Iris Image Classification (ResNeXt)

## 프로젝트 개요
- **목적**: 아이리스 꽃 이미지 분류 (2클래스)
- **주요 내용**: PyTorch 기반 ResNeXt 모델로 이미지 분류, S3 업로드, epoch별 accuracy 시각화
- **데이터**: iris-setosa, iris-virginica 이미지 (train/valid 8:2 분할)

## 주요 기능 및 코드

### 1. 데이터 준비 및 분할
```python
import os, random, shutil
classes = ['iris-setosa', 'iris-virginica']
base_dir = '/content'
train_dir = os.path.join(base_dir, 'train')
valid_dir = os.path.join(base_dir, 'valid')
for folder in [train_dir, valid_dir]:
    os.makedirs(folder, exist_ok=True)
for cls in classes:
    cls_dir = os.path.join(base_dir, cls)
    images = os.listdir(cls_dir)
    random.shuffle(images)
    n_train = int(len(images) * 0.8)
    train_cls_dir = os.path.join(train_dir, cls)
    valid_cls_dir = os.path.join(valid_dir, cls)
    os.makedirs(train_cls_dir, exist_ok=True)
    os.makedirs(valid_cls_dir, exist_ok=True)
    for i, img in enumerate(images):
        src = os.path.join(cls_dir, img)
        dst = os.path.join(train_cls_dir if i < n_train else valid_cls_dir, img)
        shutil.copy2(src, dst)
```

### 2. 모델 구조 (ResNeXt)
```python
import torch
import torchvision.models as models
model = models.resnext50_32x4d(pretrained=True)
model.fc = torch.nn.Linear(model.fc.in_features, 2)  # 2-class 분류
```

### 3. 학습/검증 루프
```python
from torch.utils.data import DataLoader
from torchvision import datasets, transforms
transform = transforms.Compose([
    transforms.Resize((224, 224)),
    transforms.ToTensor()
])
train_dataset = datasets.ImageFolder(train_dir, transform=transform)
valid_dataset = datasets.ImageFolder(valid_dir, transform=transform)
train_loader = DataLoader(train_dataset, batch_size=32, shuffle=True)
valid_loader = DataLoader(valid_dataset, batch_size=32, shuffle=False)

import torch.optim as optim
import torch.nn as nn
model = model.to('cuda')
optimizer = optim.Adam(model.parameters(), lr=1e-4)
criterion = nn.CrossEntropyLoss()
for epoch in range(10):
    model.train()
    for images, labels in train_loader:
        images, labels = images.cuda(), labels.cuda()
        optimizer.zero_grad()
        outputs = model(images)
        loss = criterion(outputs, labels)
        loss.backward()
        optimizer.step()
    # 검증 accuracy 계산 등
```

### 4. S3 업로드 예시
```python
import boto3
s3 = boto3.client('s3')
s3.upload_file('model.pth', 'mybucket', 'model.pth')
```

### 5. 결과 시각화
- Epoch별 Accuracy 그래프: `accuracy_per_epoch.png`
- S3 업로드 캡처: `img.png`

---

## 참고/실행 방법
- Jupyter에서 `S3_Resnext이미지분류_아이리스.ipynb` 실행
- 데이터: iris-setosa, iris-virginica 이미지 폴더

## 주요 코드/노트북
- [S3_Resnext이미지분류_아이리스.ipynb](./S3_Resnext이미지분류_아이리스.ipynb)
