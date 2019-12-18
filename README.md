## OS Ubuntu 16.04.6 LTS Ver

### 1.영상다운 받는 법
```
크롬브라우저로
https://sports.media.daum.net/sports/schedule/kbo 또는 https://tv.kakao.com/top
둘 중에서 영상을 다운받는다.
다음스포츠라고 가정하면
다음스포츠 -> 야구 -> 일정 -> 해당경기하이라이트버튼을 눌러 차례대로 눌러 다운 받을 영상을 클릭하여 화질 1080으로 변경 후 재생한다.
그리고 f12를 눌러 개발자도구 진입 후 Element, Console, Sources, Network와 같은 탭에서 Network로 진입한다.
네트워크로 진입 후 'mp4'로 필터 검색하면 size와 waterfall이 계속 증가하는 것이 있을 것이다.
그거를 오른쪽 누른 후 new tab을 하면 새로운 탭에서 영상이 재생될 것이고 ctrl+s를 누르면 영상을 저장할 수 있다.
카카오TV에서 할 경우도 비슷하게 하면 된다
```

### 2.OpenCV3.4.8 설치
```
Update & Upgrade
(1) sudo apt-get update
(2) sudo apt-get upgrade

개발자 도구 설치
build-essential : c/c++ 컴파일러와 관련 라이브러리, make 같은 도구들이 포함된다.
cmake : 컴파일 옵션이나  빌드된 라이브러리에 포함시킨다. (OpenCV 모듈 설정을 위해 필요한다.)
unzip : 압축을 풀기위해 필요하다.
pkg-config : 컴파일할 목적으로 설치된 라이브러리 조화하기 위해 설치한다. (나중에 설치가 되었는지 확인을 위해 설치)
(3) sudo apt-get install build-essential cmake unzip pkg-config

libraries 설치
이미지  처리/컴퓨터 비전 라이브러리인 JPEG, PNG, TIFF 파일 형식 로드를 위해 이미지 I/O 패키지를 설치한다.
(4) sudo apt-get install libjpeg-dev libpng-dev libtiff-dev
카메라 스트림으로  작업하고 비디오 파일을 처리 할 수 있도록 비디오 I/O 패키지를 설치한다.
(5) sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev v4l-utils libxvidcore-dev libx264-dev libxine2-dev
비디오 스트리밍을 위한 라이브러리를 설치한다.
(6) sudo apt-get install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev
OpenCV의 GUI 작업을 위해 GTK 라이브러리를 설치한다.
(7) sudo apt-get install libgtk-3-dev
OpenGL을 지원하기 위한 라이브러리를 설치한다.
(8) sudo apt-get install mesa-utils libgl1-mesa-dri libgtkgl2.0-dev libgtkglext1-dev
OpenCV 기능을 최적화 해주는 라이브러리를 설치한다.
(9) sudo apt-get install libatlas-base-dev gfortran libeigen3-dev

Python 설치
Python 헤더와 라이브러리를 설치한다.
(Pyhton의 Numpy는 매트릭스 연산 등을 빠르게 처리할 수 있어 OpenCV에서 사용된다.)
(10) sudo apt-get install python2.7-dev python3-dev python-numpy python3-numpy

OpenCV 3.4.8 다운로드
저장할 임시 디렉토리를 생성 후 그 폴더에 OpenCV 3.4.8을 다운받는다.
(11) mkdir opencv
(12) cd opencv
(13) wget -O opencv.zip https://github.com/opencv/opencv/archive/3.4.8.zip
(14) wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/3.4.8.zip
압축을 푼다.
(15) unzip opencv.zip
(16) unzip opencv_contrib.zip

build & install OpenCV
working directory를 생성한다.
(17) cd opencv-3.4.8
(18) mkdir build
(19) cd build
build구성
(20) 
cmake -D CMAKE_BUILD_TYPE=RELEASE \
-D CMAKE_INSTALL_PREFIX=/usr/local \
-D WITH_CUDA=ON \
-D CUDA_GENERATION=Auto \
-D WITH_CUBLAS=ON \
-D WITH_V4L=ON \
-D BUILD_PERF_TESTS=OFF \
-D BUILD_TESTS=OFF \
-D BUILD_TIFF=ON \
-D ENABLE_CXX11=ON \
-D WITH_PROTOBUF=OFF \
-D BUILD_opencv_legacy=OFF \
-D ENABLE_PRECOMPILED_HEADERS=OFF \
-D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib-3.4.8/modules \
-D CUDA_NVCC_FLAGS="-D_FORCE_INLINES" ..

컴파일
make 명령을 사용하여 컴파일 시작한다.
-j 뒤에는 cpu 코어 수를 입력한다.
(cpu 코어 수를 확인하는 방법은 cat/proc/cpuinfo | grep processor | wc-;)
(21) make -j4
※ 컴파일하는데 오랜 시간이 걸립니다.

Install OpenCV
(22) sudo make install
(23) sudo sh -c echo '/usr/local/lib/' > sudo /etc/ld.so.conf.d/opencv.conf
(24) sudo ldconfig
```
3.YOLO 사용법

YOLO를 실행하기 위해 우선적으로 설치를 해야할 것이 몇가지 있다.
'OpenCV', 'CUDA', 'cuDNN'을 설치해야 한다.

Darknet 설치
Darknet은 Yolo를 실행하기 위한 환경이다.
~/ 경로에서 다음 명령어를 실행해 Darknet을 설치
(1) git clone https://github.com/pjreddie/darknet
(2) cd darknet
(3) make

Makefile 내에서 OpenCV, CUDA, cuDNN을 사용하겠다고 선언을 해야한다.
(4) vi Makefile

OpenCV = OPENCV
CUDA = GPU
cuDNN = CUDNN
설치가 되어있다면 '0'으로 되어있는 값을 '1'로 바꾼다.
다 설치가 되어있다면
GPU=1
CUDNN=1
OPENCV=1
이렇게 설정해주면 된다.
수정한 Makefile을 적용하기 위해 다음 명령어를 입력한다.
(5) make
4.데이터 모으기

ffmpeg 다운 (sudo apt-get install ffmpeg)
ffmpeg -i filename.mp4 -r 1 foldername/filename_%05d.jpg
만약 1시간짜리 영상이라면 3600장 정도에 jpg파일이 생성
5.Boxing

Yolo_mark 다운로드
학습을 위해 'Yolo_mark'를 사용해보자.
~/경로에서 다음 명령어를 통해 다운로드 한다.
(1) git clone https://github.com/AlexeyAB/Yolo_mark
(2) cd Yolo_mark
(3) cmake.
(4) make

학습을 위한 파일 수정
예를들어 동그라미, 세모, 네모를 detect하는 네트워크를 만든다고 가정한다.

Class수 변경
~/Yolo_mark/x64/Release/data 경로에서 다음 명령어를 입력한다.
(5) vi obj.data
동그라미, 세모, 네모에 총 3가지를 학습  시킬 것이므로, classes=3으로 수정한다.

class name 설정
~/Yolo_mark/x64/Release/data 경로에서 다음 명령어를 입력한다.
(6) vi obj.names
동그라미, 세모, 네모에 총 3가지를 학습 시킬 것이므로, 각각의 이름을 'Circle', 'Qudrangle', 'Triangle'로 한다.

데이터 추가하기
준비된 이미지 파일들을 ~/Yolo_mark/x64/Release/data/img 경로로 옮긴다. 이때, 지원하는 이미지 파일 확장자는 *.jpg 뿐이다.

데이터 Boxing
~/Yolo_mark 경로 에서 다음 명령어를 입력한다.
(7) bash ./linux_mark.sh
Boxing을 통해 학습 데이터를 만드는 창이 뜬다. 이전과 다르게 우리가 추가한 데이터에 대한 이미지들이 뜬다. 
마우스를 이용해 Boxing을 하고, 숫자 키패드 0, 1, 2를 이용해 Boxing한 구간이 어떤 객체인지 naming한다. class number의 순서는 obj.names에서 저장한 이름들 순서와 같다. 마음에 안들 경우 'c' (전체)또는 'r'(부분)을 눌러 지울 수 있다. 만약 하나의 데이터에 대한 Boxing이 끝났으면, space bar를 눌러 다음 데이터로 넘어갈 수 있다.
모든 데이터에 대한 Boxing이 끝나면 esc를 눌러 종료한다.
~/Yolo_mark/x64/Release/data/img에 들어가보면 이미지 파일에 대응하는 텍스트 파일이 생성된 모습을 볼 수 있다. 
텍스트 파일들은 Boxing한 것에 대한 정보들을 담고 있다. 왼쪽부터 순서대로 'Class_number' 'X' 'Y' 'Width' 'Height'에 대한 정보이다. X, Y좌표는 Boxing한 사각형의 중심 좌표를 나타내며, Width와 Height는 각각 사각형의 가로 길이와 세로 길이를 나타낸다.
6. YOLO 데이터 학습

darknet/cfg 경로에서 yolov3.cfg를 연다음
max_batches = 4000 * 클래스 갯수
batch=64
subdivision=8
Line 610, 696, 783에서 class=N(N은 내 클래스 수)
Line 603, 689, 776에서 filters=(N+5)*3

obj.names와 obj.data파일을
darknet/data 경로에 넣는다.
obj.data파일은 열어서 train, valid, names, backup경로를 맞춰줘야한다.
train.txt와 valid.txt는 자동 만들어주는 스크립트를 제작하면 된다.
모든 설정을 마친 후 darknet을 돌려 학습을 진행한다.
