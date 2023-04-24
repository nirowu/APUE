.PHONY: all

all: sandbox 

sandbox:
	gcc -shared -fPIC sandbox.c -o sandbox.so -ldl


tmp: 
	# ./launcher ./sandbox.so config.txt cat /etc/hosts
	# ./launcher ./sandbox.so config.txt cat /etc/ssl/certs/Amazon_Root_CA_1.pem
	# ./launcher ./sandbox.so write error: No space left on deviceconfig.txt wget http://google.com -t 1
	# ./launcher ./sandbox.so config.txt wget https://www.nycu.edu.tw -t 1

clean:
	rm  open read write connect system getaddrinfo *.log *.html* sandbox.so 