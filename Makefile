all:
	nasm -f macho64 $(source).s -o $(source).o
	ld -o a.out $(source).o -macos_version_min 10.13 /usr/lib/system/libsystem_kernel.dylib
	nasm -f macho64 -q -o libc.o libc.s
	ld -o a.out -e _start -macos_version_min 11.0 libc.o /usr/lib/system/libsystem_kernel.dylib
	rm $(source)
