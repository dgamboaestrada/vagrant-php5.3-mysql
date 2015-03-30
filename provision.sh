apt-get update
 
#instalamos Apache
 
apt-get install -y apache2
 
# instalamos PHP5
 
sudo apt-get install php5 libapache2-mod-php5 -y
 
# Reiniciamos el servidor web:
 
sudo /etc/init.d/apache2 restart

#instalamos mysql
apt-get install debconf-utils -y > /dev/null

debconf-set-selections <<< "mysql-server mysql-server/root_password password root"
 
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password root"

sudo apt-get install mysql-server -y 

sudo apt-get install php5-mysql

#Reiniciamos el servidor apahce2
sudo /etc/init.d/apache2 restart