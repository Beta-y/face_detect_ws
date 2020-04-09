#!/bin/sh
rosrun face_detector kinect_img_publisher.py&rosrun face_detector turty_face_detection.py&rosrun face_detector main_loop.py 


#授予权限 chmod +x face_run.sh
