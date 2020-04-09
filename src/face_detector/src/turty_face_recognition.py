#!/usr/bin/env python
#encoding:utf-8
#?  Instructions :
#?  rosrun face_detector turty_face_recognition.py 

import rospy
import face_recognition
import cv2
import numpy as np
from face_detector.msg import face_msgs
from face_detector.msg import my_list
from sensor_msgs.msg import Image
from cv_bridge import CvBridge,CvBridgeError

#初始化  turty_face_detector  消息发布节点
rospy.init_node('turty_face_recognizer')
pub = rospy.Publisher('Topic_Recognition_Msg', face_msgs, queue_size=1)
rate = rospy.Rate(10)

#? 人脸识别函数 kinect_image:kinect原图  known_person_img：已知人的人脸ROI区域图像  known_person_name：已知人的人名字符串
def face_recognize_function(kinect_image,known_person_img,  known_person_name):
    msg = face_msgs()
    rect = my_list()
    rect.lable = 'Unknown'
    msg.index = 0
    face_names = []
    #获取已知人脸的特征描述符
    known_person_encoding = face_recognition.face_encodings(known_person_img)[0]
    #人脸匹配函数要求备选特征描述符为数组
    known_person_encodings = [known_person_encoding]
    # 裁剪图像。减少计算量
    frame_resize_bgr = cv2.resize(kinect_image, (0, 0), fx=0.25, fy=0.25)
    # BGR转RGB
    frame_resize_rgb  =  frame_resize_bgr [:, :, ::-1]
    #检测人脸并获取特征描述符
    face_locations = face_recognition.face_locations(frame_resize_rgb)
    face_encodings = face_recognition.face_encodings(frame_resize_rgb, face_locations)
    for face_encoding in face_encodings:
            # 默认为unknown
            matches = face_recognition.compare_faces(known_person_encodings, face_encoding)
            name = "Unknown"
            if True in matches:
                name =known_person_name
            face_names.append(name)
   
    # 将捕捉到的人脸显示出来
    for (rect.top, rect.right , rect.bottom, rect.left),name in zip(face_locations,face_names):
        # 恢复裁剪之前的坐标
        msg.index +=1
        rect.lable = name
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
        cv2.putText(kinect_image, name, (rect.left  + 6, rect.bottom  +29), font, 1.0, (255, 255, 255), 1)
    # 显示
    cv2.imshow('face_recognition', kinect_image)
    # cv2.imshow('face_recohnition', known_person_img)
    cv2.waitKey(1)
    pub.publish(msg)
    print(msg)

#? 订阅Kinect图像的回调函数
def kinect_callback(data):
    bridge = CvBridge()
    global  kinect_img
    kinect_img= bridge.imgmsg_to_cv2(data,"rgb8")

#? 订阅主控节点消息的回调函数    
def Main_callback(data):
    bridge = CvBridge()
    knownP_img = bridge.imgmsg_to_cv2(data,"rgb8")
    try:
        face_recognize_function(kinect_img,knownP_img, data.header.frame_id)
    except Exception as e:
        print("face_recognizer error :")
        print(e)
    
#初始化 Kinect消息订阅节点
rospy.Subscriber('Kinect_Image_Msgs', Image, kinect_callback)
#初始化 主控函数消息订阅节点
rospy.Subscriber('Main_Control_Msgs', Image, Main_callback)

while not rospy.is_shutdown():
    rate.sleep()


