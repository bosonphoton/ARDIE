# -*- coding: utf-8 -*-

import cv2
import cv2.aruco as aruco
import numpy as np
import time

# -----------------------------------------
# detect wrist_camera is available or not
# -----------------------------------------
for i in range(5):
    cap = cv2.VideoCapture(i)
    if cap.isOpened():
        print("Camera at index {} is found".format(i))
        break
    cap.release()

# -----------------------------------------
# detect which camera has maximal definition
# -----------------------------------------
# max_camera_id = 0 
# max_width = 0
# max_height = 0

# for i in range(5):
#     cap = cv2.VideoCapture(i)
#     width = int(cap.get(cv2.CAP_PROP_FRAME_WIDTH))
#     height = int(cap.get(cv2.CAP_PROP_FRAME_HEIGHT))
    
#     if width * height > max_width * max_height:
#         max_camera_id = i
#         max_width = width
#         max_height = height

#     cap.release()
# print("Camera {} has max resolution: {} x {}".format(max_camera_id, max_width, max_height))

# -----------------------------------------
# open the camera
# -----------------------------------------
max_camera_id = 2
max_width = 640
max_height = 480
cap = cv2.VideoCapture(max_camera_id)
cap.set(cv2.CAP_PROP_FRAME_WIDTH, max_width)
cap.set(cv2.CAP_PROP_FRAME_HEIGHT, max_height)
ret, frame = cap.read()
if ret:
    cv2.imshow("Max Resolution Camera", frame)
    while True:
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break
cv2.destroyAllWindows()
cap.release()