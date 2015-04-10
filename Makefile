all: upgrade_to_2014.3.sh

clean:
	# do nothing
	:

install:
	mkdir -p ${DESTDIR}/usr/bin
	cp upgrade_to_2014.3.sh ${DESTDIR}/usr/bin/os-upgrade
