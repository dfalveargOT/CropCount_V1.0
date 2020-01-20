{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf200
{\fonttbl\f0\fswiss\fcharset0 Helvetica;\f1\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red27\green31\blue34;}
{\*\expandedcolortbl;;\cssrgb\c14118\c16078\c18039;}
\margl1440\margr1440\vieww14420\viewh10480\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 #!/bin/bash\
echo \'93INSTALATION PROCEDURE\'94\
echo \'93CropApp software for counting\'94\
echo \'94Copyright \'a9 2019 DataRock S.A.S. All rights reserved.\'94\
echo \'93@author: DavidFelipeAlvearGoyes\'94\
echo \'93Created on Wed May 29 22:28:59 2019\'94\
\
\{\
cd ~/Documents\
echo "Documents"\
\}||\{\
cd ~/Documentos\
echo "Documentos"\
\}\
git clone 
\f1 \cf2 \expnd0\expndtw0\kerning0
https://github.com/dfalveargOT/CropApp.git
\f0 \cf0 \kerning1\expnd0\expndtw0 \
echo \'93Current directory\'94\
echo "$(pwd)"\
cd CropApp\
mkdir ToProcess\
mkdir Results\
\
sudo apt-get update\
sudo apt-get install python3-pip\
sudo pip3 install -U virtualenv \
virtualenv --system-site-packages -p python3 ./AppEnv\
source ./AppEnv/bin/activate\
\
\
echo \'93[Desktop Entry]\'94 > CropApp.desktop\
echo \'93 Version=1.0\'94 >>CropApp.desktop\
echo \'93Name=CropApp\'94 >> CropApp.desktop\
echo \'93Comment=DataRockSAS\'94 >> CropApp.desktop\
echo \'93Terminal=False\'94 >>CropApp.desktop\
echo \'93StartupNotify=true\'94 >>CropApp.desktop\
echo \'93Type=Application\'94 >>CropApp.desktop\
echo \'93Categories=Utility;Application;\'94 >>CropApp.desktop\
echo "Exec=gnome-terminal -e bash -c $(pwd)/Application.sh;$SHELL"\\"  >> CropApp.desktop\
echo \'93Icon=$(pwd)/Icon/icon.png\'94 >>CropApp.desktop\
\
echo \'93source ./AppEnv/bin/activate\'94 > Application.sh\
echo \'93python3 Main.py\'94 >> Application.sh\
echo \'93deactivate\'94 >> Application.sh\
echo \'93exit\'94 >> Application.sh\
\
source ./AppEnv/bin/activate\
echo "OpenCv installation"\
sudo apt-get install python-opencv\
echo "Python-os installation"\
sudo apt-get install python3-dev python3-pip\
echo "Skimage package and complements"\
sudo apt-get install python3-matplotlib python3-numpy python3-pil python3-scipy python3-tk\
pip3 install scikit-image\
echo "Progressbar installation"\
pip3 install progressbar\
echo "Numpy installation"\
pip3 install numpy\
echo "Compilation modules"\
pip3 install cython\
echo "Optimization modules"\
pip3 install multiprocessing\
pip3 install threaded\
pip3 install queque\
pip install queuelib\
echo "Tensorflow installation"\
pip install --upgrade tensorflow\
echo "Complete installation"\
\
deactivate\
\
\
\
\
}