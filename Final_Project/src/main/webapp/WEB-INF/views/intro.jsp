<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Webcam Test</h1>
    <!-- <video id="videoElement" width="640" height="480" autoplay></video> -->
    <h1>Run Python Script</h1>
    <a href="/">Run Python Script</a>
    <script>
      // 웹캠 가져오기
      async function getMedia() {
        try {
          const stream = await navigator.mediaDevices.getUserMedia({ video: true });
          const videoElement = document.getElementById('videoElement');
          videoElement.srcObject = stream;
        } catch (err) {
          console.error('Error accessing the webcam:', err);
        }
      }
      // 페이지 로드 시 웹캠 활성화
      window.onload = function() {
        getMedia();
      };
    </script>
</body>
</html>