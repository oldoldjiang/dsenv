# install Mysql
sudo apt-get -y install mysql-server
sudo apt -y install mysql-client
sudo apt -y install libmysqlclient-dev
sudo apt-get -y install libctemplate0 libzip1 python-pysqlite2 python-crypto python-paramiko
sudo apt-get -y install mysql-workbench

sudo apt-get update
sudo apt-get -y install r-base
sudo apt-get -y install r-base-dev
sudo apt-get -y install libssl-dev libcurl4-openssl-dev
sudo apt-get -y install libxml2-dev libzmq3-dev libpq-dev

# install sougou yinpin
sudo add-apt-repository ppa:fcitx-team/nightly
sudo apt-get -y install fcitx
sudo apt-get -f install
sudo apt-get -y install fcitx fcitx-config-gtk fcitx-table-all im-switch
wget http://cdn2.ime.sogou.com/dl/index/1524572264/sogoupinyin_2.2.0.0108_amd64.deb?st=DW_Rcvt6-Bz30bPL66UoRQ&e=1532826228&fn=sogoupinyin_2.2.0.0108_amd64.deb
sudo dpkg -i sogoupinyin_2.2.0.0108_amd64.deb
# setting->language support-> Keyboard input method system(set to fcitx) -> reboot system
# seting ->Text Entry -> + sougou pinyin


sudo apt -y install cmake
sudo apt -y install vim
sudo apt -y install curl

# install Rstudio
sudo apt -y install gdebi-core
cd ~
mkdir Downloads
cd Downloads
wget https://download1.rstudio.org/rstudio-xenial-1.1.453-amd64.deb
sudo gdebi rstudio-xenial-1.1.453-amd64.deb << EOF
y
EOF


# install h5
cd ~/Downloads
wget https://support.hdfgroup.org/ftp/HDF5/current/src/hdf5-1.10.1.tar
tar -xvf hdf5-1.10.1.tar
cd hdf5-1.10.1/
make
sudo apt-get -y install libhdf5-dev
# R --no-save << EOF
# source('http://bioconductor.org/biocLite.R')
# biocLite('hdf5')
# EOF

sudo apt install libsasl2-dev # for R package mongolite

# install R packages
R --no-save << EOF
options(repos=structure(c(CRAN="https://cran.cnr.berkeley.edu/")))
install.packages('gbm')
install.packages('e1071')
install.packages('nnet')
install.packages('abind')
install.packages('glmnet')
install.packages('rpart')
install.packages('rpart.plot')
install.packages('xts')
install.packages('ggplot')
install.packages('stringr')
install.packages('parallel')
install.packages('yaml')
install.packages('Rcpp')
install.packages('data.table')
install.packages('lubridate')
install.packages('plyr')
install.packages('reshape2')
install.packages('profvis')
install.packages('ndjson')
install.packages('rredis')
install.packages('mongolite')
install.packages('knitr')
install.packages('h5')       # require hdf5
install.packages('roxygen2') # require curl
install.packages('devtools')
install.packages('caret')
install.packages('RcppRoll')
install.packages('RMySQL')   # require libmysqlclient-dev
install.packages('rvest')
EOF

# install Java
sudo mkdir /usr/java/
cd /usr/java
sudo wget http://download.oracle.com/otn-pub/java/jdk/8u181-b13/96a7b8442fe848ef90c96a2fad6ed6d1/jdk-8u181-linux-x64.tar.gz
sudo tar -xzvf jdk-8u181-linux-x64.tar.gz
sudo rm jdk-8u181-linux-x64.tar.gz
sudo sed -i '$a\export JAVA_HOME=/usr/java/jdk1.8.0_181\nexport JRE_HOME=/usr/java/jdk1.8.0_181/jre\nexport CLASSPATH=.:$JAVA_HOME/lib:$JRE_HOME/lib:$CLASSPATH\nexport PATH=$JAVA_HOME/bin:$JRE_HOME/bin:$PATH\n' /etc/profile
source /etc/profile
R CMD javareconf -e

# install rJava and mailR
R --no-save << EOF
options(repos=structure(c(CRAN="https://cran.cnr.berkeley.edu/")))
install.packages('mailR')
EOF



# install anaconda3
# warning: please do not install anaconda before installing libhdf5-dev and r h5 library
curl -O https://repo.continuum.io/archive/Anaconda3-5.2.0-Linux-x86_64.sh

bash Anaconda3-5.2.0-Linux-x86_64.sh # TODO: skip the license pages
source ~/.bashrc

# install redis
sudo apt-get -y install redis-server

# install sublime text3
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

# install Chrome
cd Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install libappindicator1 libdbusmenu-glib4 libdbusmenu-gtk4 libindicator7 libpango1.0-0 libpangox-1.0-0
sudo dpkg -i google-chrome-stable_current_amd64.deb
