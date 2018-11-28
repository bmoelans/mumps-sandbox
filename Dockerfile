FROM yottadb/yottadb:r1.20
LABEL maintainer="Bart Moelans <bart.moelans@uantwerpen.be>"

##################################
# Define global environment vars #
##################################
ENV SRC_DIR=/data \
    ydb_dist=/opt/yottadb/current


#################################################
# Configure MUMPS Sandbox                       #
# Althoug we use YottaDB, try to be independent #
#################################################

RUN apt-get -y update \
	&& apt-get -y install vim \
    && ln -s ${ydb_dist}/ydb /usr/local/bin/M \
	&& echo "source ${ydb_dist}/ydb_env_set" >> /root/.bashrc \
    && echo "export ydb_gbldir=/data/g/sandbox.gld" >> /root/.bashrc

# by default yottadb entrypoint is ydb itself
ENTRYPOINT ["/bin/bash"]
WORKDIR ${SRC_DIR}
