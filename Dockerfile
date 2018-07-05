FROM ubuntu:16.04
MAINTAINER saiprasad169@gmail.com
RUN apt-get update -y
RUN apt-get install vim openssh-server net-tools sudo apache2 wget -y
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*
COPY index.html /var/www/html/index.html
ADD apache.sh /apache.sh
CMD ["/bin/bash","/apache.sh"]

