sudo apt-get update
sudo apt-get -y install r-base
sudo apt-get -y install r-base-dev
sudo apt-get -y install libssl-dev libcurl4-openssl-dev
sudo apt-get -y install libxml2-dev libzmq3-dev libpq-dev
sudo apt-get -y install libhdf5-dev

cd ~
cd Downlodas
wget https://download1.rstudio.org/rstudio-xenial-1.1.453-amd64.deb
gdebi rstudio-xenial-1.1.453-amd64.deb

sudo apt-get -y install mysql-server
sudo apt -y install mysql-client
sudo apt -y install libmysqlclient-dev
