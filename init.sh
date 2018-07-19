sudo apt-get update
sudo apt-get -y install r-base
sudo apt-get -y install r-base-dev
sudo apt-get -y install libssl-dev libcurl4-openssl-dev
sudo apt-get -y install libxml2-dev libzmq3-dev libpq-dev
sudo apt-get -y install libhdf5-dev



# install Rstudio
sudo apt -y install gdebi-core
cd ~
mkdir Downloads
cd Downloads
wget https://download1.rstudio.org/rstudio-xenial-1.1.453-amd64.deb
sudo gdebi rstudio-xenial-1.1.453-amd64.deb << EOF
y
EOF


# install R packages
R --no-save << EOF
options(repos=structure(c(CRAN="https://cran.cnr.berkeley.edu/")))
install.packages('gbm')
install.packages('xts')
install.packages('ggplot')
install.packages('Rcpp')
install.packages('data.table')
install.packages('lubridate')
install.packages('plyr')
install.packages('reshape2')
install.packages('profvis')
EOF



sudo apt-get -y install mysql-server
sudo apt -y install mysql-client
sudo apt -y install libmysqlclient-dev
