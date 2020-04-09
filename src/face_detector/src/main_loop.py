#!/usr/bin/env python
#encoding:utf-8
#?  Instructions :
#?  rosrun face_detector main_loop.py 
#?  注意使用笔记本前置摄像头作了图像镜像处理


import rospy
import face_recognition
import cv2
import numpy as np
from face_detector.msg import face_msgs
from face_detector.msg import my_list
from sensor_msgs.msg import Image
from cv_bridge import CvBridge,CvBridgeError
from std_msgs.msg import Header


#初始化  turty_face_detector  消息发布节点
rospy.init_node('main_node')
main_pub = rospy.Publisher('Main_Control_Msgs', Image, queue_size=1)
rate = rospy.Rate(10)

# ? 订阅人脸位置的回调函数
def face_locate_callback(msgs):
    global face_locate_msgs
    face_locate_msgs = msgs

# ? 发布图像 功能函数
def publish_image(image,name):
    image_temp=Image()
    header = Header(stamp=rospy.Time.now())
    header.frame_id = name
    image_temp.height=image.shape[0]
    image_temp.width=image.shape[1]
    image_temp.encoding='rgb8'
    image_temp.data=np.array(image).tostring()
    image_temp.header=header
    image_temp.step=image.shape[0]*3
    main_pub.publish(image_temp)

#? 订阅Kinect图像的回调函数
def kinect_callback(data):
    bridge = CvBridge()
    kinect_image = bridge.imgmsg_to_cv2(data,"rgb8")
    try:
        # 绘制矩形框
        cv2.rectangle(kinect_image, (face_locate_msgs.location[0].left , face_locate_msgs.location[0].top), (face_locate_msgs.location[0].right , face_locate_msgs.location[0].bottom ), (0, 0, 255), 2)
        cv2.imshow('main_loop', kinect_image)
        cv2.waitKey(1)
        #? 假设已经有标记好名字的人脸区域，发送给人脸识别器
        img_roi = kinect_image[face_locate_msgs.location[0].top:face_locate_msgs.location[0].bottom,face_locate_msgs.location[0].left:face_locate_msgs.location[0].right]
        publish_image(img_roi,'YYH')
    except Exception as e:
        print("main loop error :")
        print(e)

rospy.Subscriber('Topic_Detection_Msgs', face_msgs, face_locate_callback)
rospy.Subscriber('Kinect_Image_Msgs', Image, kinect_callback)
# rospy.spin()
while not rospy.is_shutdown():
    rate.sleep()

