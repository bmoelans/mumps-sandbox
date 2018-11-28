FROM yottadb/yottadb:r1.20
LABEL maintainer="Bart Moelans <bart.moelans@uantwerpen.be>"

##################################
# Define global environment vars #
##################################
ENV SRC_DIR=/data \
    ydb_dist=/opt/yottadb/current/


#################################################
# Configure MUMPS Sandbox                       #
# Althoug we use YottaDB, try to be independent #
#################################################

RUN apt-get -y update \
	&& apt-get -y install vim \
    && ln -s ${ydb_dist}/ydb /usr/local/bin/M

# by default yottadb entrypoint is ydb itself
ENTRYPOINT ["/bin/bash"]
WORKDIR ${SRC_DIR}
