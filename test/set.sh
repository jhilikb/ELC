cd ..
git clone https://github.com/THU-MIG/yolov10.git
cd yolov10
cp /home/test/mytest.py ./
cp /home/test/libcublas.so.10 /usr/local/cuda/lib64/
cp /home/test/libcublasLt.so.10 /usr/local/cuda/lib64/
cp /home/test/libcudart.so.10.2 /usr/local/cuda/lib64/
cp /home/test/libcudnn.so.8 /usr/lib/aarch64-linux-gnu/
cp /home/test/libcufft.so.10 /usr/local/cuda/lib64/
cp /home/test/libcurand.so /usr/local/cuda/lib64/
cp /home/test/libcusolver.so.10 /usr/local/cuda/lib64/
cp /home/test/libcusparse.so.10 /usr/local/cuda/lib64/
cp /home/test/libnvToolsExt.so.1 /usr/local/cuda/lib64/
apt-get update
apt-get install nano
pip3 install matplotlib
pip3 install PyYAML==6.0.1
pip3 install tqdm
pip3 install opencv-python==4.9.0.80
