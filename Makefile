all: 

install:
	cp cproxy /usr/bin/cproxy
	cp cproxy.conf /etc/cproxy.conf

uninstall:
	rm /usr/bin/cproxy
	rm /etc/cproxy.conf
