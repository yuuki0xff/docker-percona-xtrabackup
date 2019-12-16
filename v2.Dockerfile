# Percona XtraBackup v2.4.x
# If you administer MySQL v8.x or later, use yuuki0xff/percona-xtrabackup:8 (or build the docker image from v8.Dockerfile).

FROM debian:buster
LABEL  maintainer "yuuki0xff <yuuki0xff@gmail.com>"
ARG DEBIAN_VERSION=buster
ARG URL=https://www.percona.com/downloads/Percona-XtraBackup-2.4/Percona-XtraBackup-2.4.17/binary/debian/buster/x86_64/percona-xtrabackup-24_2.4.17-1.buster_amd64.deb

RUN set -euv && \
	apt-get update && \
	apt-get install -y \
		libdbd-mysql-perl \
		libcurl4-openssl-dev \
		rsync \
		libaio1 \
		libatomic1 \
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
