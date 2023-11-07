all:hello

hello: hello.s
	@as hello.s -o hello.o
	@ld hello.o -o hello -l System -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _main -arch arm64
	@echo "\033[1;92mCompiled succesfully..\033[0m"
	@./hello

clean:
	@rm -f hello hello.o

re: clean all
