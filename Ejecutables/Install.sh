#!/bin/bash
echo "INSTALATION PROCEDURE"
echo "CropApp software for counting"
echo "Copyright © 2019 DataRock S.A.S. All rights reserved."
echo "@author: DavidFelipeAlvearGoyes"
echo "Created on Wed May 29 22:28:59 2019"

sudo apt-get update
sudo apt-get install python3-pip
sudo pip3 install -U virtualenv


cd ~/Documentos
echo "Documents"

git clone https://github.com/dfalveargOT/CropApp.git
echo "Current directory"
echo "$(pwd)"
cd CropApp
mkdir ToProcess
mkdir Results

virtualenv --system-site-packages -p python3 ./AppEnv
source ./AppEnv/bin/activate

echo "[Desktop Entry]" > CropApp.desktop
echo " Version=1.0" >>CropApp.desktop
echo "Name=CropApp" >> CropApp.desktop
echo "Comment=DataRockSAS" >> CropApp.desktop
echo "Terminal=False" >>CropApp.desktop
echo "StartupNotify=true" >>CropApp.desktop
echo "Type=Application" >>CropApp.desktop
echo "Categories=Utility;Application;" >>CropApp.desktop
echo "Exec=gnome-terminal -e bash -c $(pwd)/Application.sh;exit;$SHELL"\"  >> CropApp.desktop
echo "Icon=$(pwd)/Icon/icon.png" >>CropApp.desktop

echo "cd $(pwd)" > Application.sh
echo "source ./AppEnv/bin/activate" >> Application.sh
echo "python3 Main.py" >> Application.sh
echo "deactivate" >> Application.sh
echo "exit" >> Application.sh

chmod +x CropApp.desktop
chmod +x Application.sh

source ./AppEnv/bin/activate
echo "OpenCv installation"
sudo apt-get install python-opencv
sudo apt-get install libopencv-dev python3-opencv
echo "Python-os installation"
sudo apt-get install python3-dev python3-pip
echo "Skimage package and complements"
sudo apt-get install python3-matplotlib python3-numpy python3-pil python3-scipy python3-tk
pip3 install scikit-image
echo "Progressbar installation"
pip3 install progressbar
echo "Numpy installation"
pip3 install numpy
echo "Compilation modules"
pip3 install cython
echo "Optimization modules"
pip3 install multiprocessing
pip3 install threaded
pip3 install queque
pip install queuelib
echo "Tensorflow installation"
pip install --upgrade tensorflow
echo "Complete installation"

deactivate
