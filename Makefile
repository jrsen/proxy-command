all: 

install:
	cp -f cproxy /usr/bin/cproxy
	cp -f cproxy.conf /etc/cproxy.conf

uninstall:
	rm -f /usr/bin/cproxy
	rm -f /etc/cproxy.conf
