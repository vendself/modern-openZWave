svn co http://open-zwave.googlecode.com/svn/trunk/ open-zwave
make -C open-zwave
make -C src clean  --eval=CXX=g++-4.8 LD=g++-4.8 
make -C src  --eval=CXX=g++-4.8 LD=g++-4.8 
cp src/ModernOZW .
echo "Installed successfully, now going into sudo and copying the library to /usr/local/lib"
echo "Please edit this file if your libraries are stored elsewhere"
sudo cp open-zwave/libopenzwave.so.1.2 /usr/lib/
sudo rm /usr/lib/libopenzwave.so
sudo ln -s /usr/lib/libopenzwave.so.1.2 /usr/lib/libopenzwave.so
sudo ldconfig
