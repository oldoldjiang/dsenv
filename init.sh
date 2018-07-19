# install Mysql
sudo apt-get -y install mysql-server
sudo apt -y install mysql-client
sudo apt -y install libmysqlclient-dev



sudo apt-get update
sudo apt-get -y install r-base
sudo apt-get -y install r-base-dev
sudo apt-get -y install libssl-dev libcurl4-openssl-dev
sudo apt-get -y install libxml2-dev libzmq3-dev libpq-dev


sudo apt -y install cmake
sudo apt -y install vim
sudo apt -y install curl

# install anaconda3
curl -O https://repo.continuum.io/archive/Anaconda3-5.2.0-Linux-x86_64.sh

bash Anaconda3-5.2.0-Linux-x86_64.sh # TODO: skip the license pages
source ~/.bashrc

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
install.packages('jsonlite')
install.packages('rredis')
install.packages('mongolite')
install.packages('knitr')
install.packages('h5')       # require hdf5
install.packages('roxygen2') # require curl
install.packages('devtools')
EOF


# install redis
sudo apt-get -y install redis-server

