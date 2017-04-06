.DEFAULT_GOAL  = all
NAME           = go-greet
PACKAGE        = github.com/petehouston/$(NAME)
NUMCPUS        = $(shell cat /proc/cpuinfo | grep '^processor\s*:' | wc -l)

.PHONY: build
build: $(NAME)

.PHONY: test
test:
	go test -v ./...