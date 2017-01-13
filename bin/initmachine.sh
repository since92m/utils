sudo apt-get install linux-headers-generic build-essential dkms
sudo apt-get install --reinstall bcmwl-kernel-source 
sudo apt-get install linux-source 
sudo add-apt-repository ppa:noobslab/themes
sudo add-apt-repository ppa:noobslab/icons
sudo apt-get update
sudo apt-get install -y unity-tweak-tool fonts-wqy-microhei flatabulous-theme ultra-flat-icons \
    git docker screen ibus-pinyin language-pack-zh-hans indicator-multiload
sudo apt-get remove vim-common
sudo apt-get install -y vim-common vim-gnome
sudo apt-get -y install exuberant-ctags
curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh
#tar -zxvf flash_player_npapi_linux.x86_64.tar.gz 
#sudo cp libflashplayer.so /usr/lib/firefox-addons/plugins/
#sudo cp -r usr/* /usr/
sudo apt-get install -y apt-transport-https ca-certificates
sudo apt-key adv                --keyserver hkp://ha.pool.sks-keyservers.net:80                --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get update 
sudo apt-cache policy docker-engine
sudo apt-get install -y linux-image-extra-$(uname -r) linux-image-extra-virtual
sudo apt-get install -y docker-engine
#sudo dpkg -i nvidia-docker_1.0.0.rc.3-1_amd64.deb 
sudo groupadd docker
sudo gpasswd -a ${USER} docker
sudo service docker restart
sudo usermod -aG docker $USER
sudo service docker restart
