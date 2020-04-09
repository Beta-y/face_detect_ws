#!/usr/bin/env python
#encoding:utf-8
#?  Instructions :
#?  rosrun face_detector turty_face_detection.py 


import rospy
import face_recognition
import cv2
import numpy as np
from face_detector.msg import face_msgs
from face_detector.msg import my_list
from sensor_msgs.msg import Image
from cv_bridge import CvBridge,CvBridgeError

#初始化  turty_face_detector  消息发布节点
rospy.init_node('turty_face_detector')
pub = rospy.Publisher('Topic_Detection_Msgs', face_msgs, queue_size=1)
rate = rospy.Rate(10)

#? 人脸检测 发布人脸位置消息
def face_detect_function(kinect_image):
    face_locations = []
    rect = my_list()
    rect.lable = 'Unknown'
    msg = face_msgs()
    msg.index = 0
    # # 镜像为正常画面
    # kinect_image = cv2.flip(kinect_image, 1)
    # 裁剪图像。减少计算量
    frame_resize_bgr = cv2.resize(kinect_image, (0, 0), fx=0.25, fy=0.25)
    # BGR转RGB
    frame_resize_rgb  =  frame_resize_bgr [:, :, ::-1]
    #检测人脸
    face_locations = face_recognition.face_locations(frame_resize_rgb)
    # 将捕捉到的人脸显示出来
    for (rect.top, rect.right , rect.bottom, rect.left)  in face_locations :
        # 恢复裁剪之前的坐标
        msg.index +=1
        rect.top *= 4
        rect.right *= 4
        rect.bottom *= 4
        rect.left *= 4
        msg.location.append(rect)
        # 绘制矩形框
        cv2.rectangle(kinect_image, (rect.left , rect.top), (rect.right , rect.bottom ), (0, 0, 255), 2)
        # 加上标签
        cv2.rectangle(kinect_image, (rect.left , rect.bottom  ), (rect.right , rect.bottom  + 35), (0, 0, 255), cv2.FILLED)
        font = cv2.FONT_HERSHEY_DUPLEX
        cv2.putText(kinect_image, rect.lable, (rect.left  + 6, rect.bottom  +29), font, 1.0, (255, 255, 255), 1)
    # 显示
    cv2.imshow('face_detection', kinect_image)
    cv2.waitKey(1)
    pub.publish(msg)
    print(msg)

#? kinect消息订阅 回调函数
def kinect_callback(data):
    bridge = CvBridge()
    kinect_image = bridge.imgmsg_to_cv2(data,"rgb8")
    # print(data.header.frame_id)
    try:
        face_detect_function(kinect_image)
    except Exception as e:
        print("face_detector error :")
        print(e)

rospy.Subscriber('Kinect_Image_Msgs', Image, kinect_callback)
while not rospy.is_shutdown():
    rate.sleep()

