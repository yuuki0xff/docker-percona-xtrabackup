# Unofficial Docker Image for Percona XtraBackup

## Description
This docker image provides a way that execute XtraBackup inside a docker container.
See [Percona XtraBackup official site](https://www.percona.com/software/mysql-database/percona-xtrabackup) for more detail about the Percona XtraBackup.

## Usage
```sh
docker run --rm \
	-v /etc/mysql:/etc/mysql:ro \
	-v /var/lib/mysql:/var/lib/mysql:ro \
	-v /run:/run:ro \
	yuuki0xff/percona-xtrabackup xtrabackup --backup --stream xbstream --uroot
```


## Included commands
* xbcloud
* xbcloud_osenv
* xbcrypt
* xbstream
* xtrabackup
