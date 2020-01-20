#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Jun  5 13:21:19 2019

@author: DavidFelipe
"""
import cv2
import numpy as np
import Preprocessing
from matplotlib.pyplot import imshow, show

from matplotlib.pyplot import title, imsave, hist

from skimage.exposure import rescale_intensity
from skimage.exposure import equalize_hist
import PIL


big = np.copy(image)
x = big[10500:11000,5500:6000,:]
image = x
cv2.imshow("window", image)
cv2.waitKey(0)
cv2.destroyWindow("window")


im = cv2.bilateralFilter(image,35,150,150)

cv2.imshow("window", im)
cv2.waitKey(0)
cv2.destroyWindow("window")

cv2.imwrite("color.jpg", im)
hist(img.ravel(),256,[0,240])
show()


hsv = cv2.cvtColor(im, cv2.COLOR_RGB2HSV)
hsvb = cv2.bilateralFilter(hsv,35,200,200)

cv2.imshow("window", hsv)
cv2.waitKey(0)
cv2.destroyWindow("window")

verde_bajos = np.array([20,40,10], dtype=np.uint8)
verde_altos = np.array([75, 255, 255], dtype=np.uint8)
mask = cv2.inRange(hsv, verde_bajos, verde_altos)


cv2.imshow("window", mask.astype('uint8'))
cv2.waitKey(0)
cv2.destroyWindow("window")


def get_main_color(file):
    img = Image.open(file)
    colors = img.getcolors(256) #put a higher value if there are many colors in your image
    max_occurence, most_present = 0, 0
    try:
        for c in colors:
            if c[0] > max_occurence:
                (max_occurence, most_present) = c
        return most_present
    except TypeError:
        raise Exception("Too many colors in the image")
        
img = Image.open("color.jpg")
colors = img.getcolors(10)








