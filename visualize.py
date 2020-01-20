#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu May  9 19:06:12 2019

@author: DavidFelipe
"""
import os
import cv2
from matplotlib.pyplot import imshow, show

## Visualization
imshow(layer1[:,:,2], cmap = 'gray')
show()
imshow(layer2[:,:,2], cmap = 'gray')
show()
imshow(layer3_raw, cmap = 'gray')
show()

## Visualization
imshow(maskLayer1[:,:,1], cmap = 'gray')
show()
imshow(maskLayer2[:,:,0], cmap = 'gray')
show()
imshow(mas[:,:,:], cmap = 'gray')
show()
cv2.imwrite("VectorProcess20.jpg", imageL20.astype('uint8'))
cv2.imwrite("VectorProcess21.jpg", imageL21.astype('uint8'))
cv2.imwrite("VectorProcess3.jpg", imageL3.astype('uint8'))


cv2.imshow("Object", layer1[:,:,0])
mask = cv2.inRange(image, low_range, high_range)

result = cv2.bitwise_and(image, image, mask=layer1[:,:,1])

imshow(mask, cmap = 'gray')
show()
