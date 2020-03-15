x86:
	./build_x86.sh;
raspi:
	./build_raspi.sh;
install:
	echo "install"
clean:
	rm -rf bin/ build_x86/ build_raspi/