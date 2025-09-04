from fastapi import FastAPI
from fastapi.responses import StreamingResponse
import cv2
import uvicorn

app = FastAPI()

# 웹캠 객체 0의 의미는 0번째 카메라다
cap = cv2.VideoCapture(0)  # 웹캠

# url을 칠때마다 웹캠의 활영된 프레임을 반환하는 함수
def generate_frames():
    while True:
        # 웹캠객체로부터 프레임 1장을 읽어옴
        success, frame = cap.read()
        # 못 읽어왔다면
        if not success:
            break
        # 프레임을 이미지 인코더로 전달할거임
        ret, buffer = cv2.imencode('.jpg', frame)
        # 바이트 타입
        frame = buffer.tobytes()
        # 여드(yield): 순차적 변환,
        # 문자열은 미디어 반환 양식이니, 이해 or 암기 할 필요가 없다..
        yield (b'--frame\r\n'
               b'Content-Type: image/jpeg\r\n\r\n' + frame + b'\r\n')
        
# 라우트 함수
@app.get("/video")
def video_feed():
            # 스트리밍으로 반환
    return StreamingResponse(generate_frames(),
                    media_type="multipart/x-mixed-replace; boundary=frame")
    
@app.get("/test")
def video_feedtest():
    return {"msg":"hi"}
if __name__ == "__main__":
    uvicorn.run(app, host="172.16.1.74", port=8500)