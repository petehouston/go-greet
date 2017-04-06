.DEFAULT_GOAL  = all
NAME           = go-greet
PACKAGE        = github.com/petehouston/$(NAME)
NUMCPUS        = $(shell cat /proc/cpuinfo | grep '^processor\s*:' | wc -l)

.PHONE: all
all: test

.PHONY: install
install:
	echo GOPATH=`pwd`
	go install

.PHONY: test
test:
	go test -v ./...