dnf module disable mysql -y
cp /home/centos/roboshop-shell/mysql.repo /etc/yum.repos.d/mysql.repo
yum install mysql-community-server -y
mysql_secure_installation --set-root-pass RoboShop@1
systemctl enable mysqld
systemctl restart mysqld