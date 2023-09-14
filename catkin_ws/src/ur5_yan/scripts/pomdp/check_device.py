# -*- coding: utf-8 -*-

import cv2
import cv2.aruco as aruco
import numpy as np
import time

# -----------------------------------------
# detect which camera is astra 
# -----------------------------------------
for i in range(10):
    cap = cv2.VideoCapture(i)
    if not cap.isOpened():
        print("Camera at index {} not found".format(i))
        continue
    ret, frame = cap.read()
    if ret:
        cv2.imshow("Camera Index {}".format(i), frame)
        cv2.waitKey(1000)
        cv2.destroyAllWindows()
    cap.release()

print("Test finished")
