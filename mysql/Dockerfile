FROM centos:centos6
MAINTAINER Kevin "kevin72c@qq.com"
 
RUN yum install -y mysql-server mysql
 
RUN /etc/init.d/mysqld start &&\
    mysql -e "grant all privileges on *.* to 'root'@'%' identified by '1qaz2wsx';"&&\
    mysql -e "grant all privileges on *.* to 'root'@'localhost' identified by '1qaz2wsx';"&&\
    mysql -u root -p1qaz2wsx -e "show databases;"
 
EXPOSE 3306
 
CMD ["/usr/bin/mysqld_safe"]