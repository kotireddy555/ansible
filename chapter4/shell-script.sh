#Install Apache
yum install --quiet -y httpd httpd-devel
#Copy configuration files.
cp httpd.conf /etc/httpd/conf/httpd.conf
cp httpd-vhosts.conf /etc/httpd/conf/httpd-hosts
# Start Apache and configure it to run at boot
service httpd start
chkcong httpd on

