hello: /usr/lib/libhello.so main.c
	gcc -Wall -o hello -I. main.c -lhello
	sudo mv ./hello /usr/bin/

hello /usr/lib/libhello.so: hello.o
	gcc -shared -o libhello.so hello.o
	sudo mv ./libhello.so /usr/lib
	chmod 0755 /usr/lib/libhello.so
	sudo ldconfig

hello.o: hello.c
	gcc -c -Wall -Werror -fpic hello.c

.PHONY: clean uninstall

clean:
	rm *.o

uninstall:
	sudo rm /usr/lib/libhello.so
	sudo rm /usr/bin/hello

