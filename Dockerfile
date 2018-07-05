FROM ubuntu:18.04
MAINTAINER Bart Moelans <bart@moelans.be>

RUN apt-get -y update \
	&& apt-get -y install wget sudo vim \
	&& apt-get -y install libelf-dev  # install dependencies needed by GT.M

##################################
# Define global environment vars #
##################################
ENV SRC_DIR=/root/.fis-gtm/r/

#################
# Install Mumps #
#################
WORKDIR /tmp
RUN wget http://sourceforge.net/projects/fis-gtm/files/GT.M%20Installer/v0.14/gtminstall \
	&& chmod +x gtminstall \
	&& sudo ./gtminstall --utf8 default \
	&& echo "source /usr/lib/fis-gtm/V6.3-004_x86_64/gtmprofile" >> /root/.bashrc

WORKDIR ${SRC_DIR}
