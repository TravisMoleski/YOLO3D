import cv2
import numpy as np
import glob
import re

img_array = []

ims = sorted(glob.glob('/home/travis/Work/YOLO/yolo3d/TM_YOLO3D/YOLO3D/output/*.png'))
num_ims = len(ims)

print(num_ims)

i = 0
while i < num_ims:
    print(i, "out of", num_ims, "images")
    file = '/home/travis/Work/YOLO/yolo3d/TM_YOLO3D/YOLO3D/output/'+str(i)+'.png'
    i += 1


# for filename in ims:
    img = cv2.imread(file)
    height, width, layers = img.shape
    size = (width,height)
    img_array.append(img)

out = cv2.VideoWriter('result_videos/project.avi',cv2.VideoWriter_fourcc(*'DIVX'), 24, size)
 
for i in range(len(img_array)):
    out.write(img_array[i])
out.release()