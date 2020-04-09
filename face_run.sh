#!/bin/sh

#本文件为一键运行，不推荐使用，因为关闭不当会导致摄像头端口持续占用
rosrun face_detector kinect_img_publisher.py&rosrun face_detector turty_face_detection.py&rosrun face_detector main_loop.py&rosrun face_detector turty_face_recognition.py 

#授予权限 chmod +x face_run.sh
