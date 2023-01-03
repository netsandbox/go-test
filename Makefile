.PHONY: all
all:
	gcc -static -Wl,-s hello_c.c -o hello_c_wo_symbols
	gcc -static hello_c.c -o hello_c
	go build -o hello_go hello_go.go
	go build -o hello_go_wo_symbols -ldflags '-s -w' hello_go.go
	ls -1sh hello_c hello_c_wo_symbols hello_go hello_go_wo_symbols
