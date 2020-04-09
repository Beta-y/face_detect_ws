#!/usr/bin/env python
#encoding:utf-8
#?  Instructions :
#?  rosrun face_detector kinect_img_publisher.py 
#?  注意使用笔记本前置摄像头作了图像镜像处理
import rospy
import cv2
import numpy as np

from std_msgs.msg import Header
from sensor_msgs.msg import Image

rospy.init_node("Kinect_2", anonymous=True)
image_pubulish=rospy.Publisher('Kinect_Image_Msgs',Image,queue_size=1)
rate = rospy.Rate(10)

# ? 发布图像 功能函数
def publish_image(image,name):
    image_temp=Image()
    header = Header(stamp=rospy.Time.now())
    header.frame_id = 'map'
    image_temp.height=image.shape[0]
    image_temp.width=image.shape[1]
    image_temp.encoding='rgb8'
    image_temp.data=np.array(image).tostring()
    image_temp.header=header
    image_temp.step=image.shape[0]*3
    image_pubulish.publish(image_temp)

video_capture = cv2.VideoCapture(0)

while(True):
    # 读取摄像头画面
    ret, frame = video_capture.read()
    # 镜像为正常画面
    frame = cv2.flip(frame, 1)
    cv2.imshow('kinect_image',frame)
    if(cv2.waitKey(1)==ord('q')):
        break
    publish_image(frame,'Camera')