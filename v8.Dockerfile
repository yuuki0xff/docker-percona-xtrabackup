# Percona XtraBackup v8.x
# If you administer MySQL v5.x, use yuuki0xff/percona-xtrabackup:2 (or build the docker image from v2.Dockerfile).

FROM debian:buster
LABEL  maintainer "yuuki0xff <yuuki0xff@gmail.com>"
ARG DEBIAN_VERSION=buster
ARG URL=https://www.percona.com/downloads/Percona-XtraBackup-LATEST/Percona-XtraBackup-8.0-8/binary/debian/buster/x86_64/percona-xtrabackup-80_8.0.8-1.buster_amd64.deb

RUN set -euv && \
	apt-get update && \
	apt-get install -y \
		libdbd-mysql-perl \
		libcurl4-openssl-dev \
		rsync \
		libaio1 \
		libcurl4 \
		libev4 \
		wget && \
	rm -rf /usr/share/doc/* && \
	rm -rf /usr/share/info/* && \
	rm -rf /tmp/* && \
	rm -rf /var/tmp/* && \
	wget -O xtrabackup.deb ${URL} && \
	dpkg -i xtrabackup.deb && \
	rm -f xtrabackup.deb
