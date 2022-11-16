default: help

# 变量集合
PROJECT ?= docker-project
VERSION ?= $(shell date -u +v%Y%m%d)-$(shell git describe --tags --always --dirty)
BIN_LABELS ?= ${PROJECT}_$(VERSION) 
WIN_LABELS ?= ${PROJECT}_$(VERSION).exe
DOCKER_LABELS ?= ${PROJECT}:$(VERSION)
GO_LDFLAGS ?= -ldflags " -w"

build-lux:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build ${GO_LDFLAGS} -o ${BIN_LABELS} main.go

build-mac: 
	CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build ${GO_LDFLAGS} -o ${BIN_LABELS} main.go

build-win: 
	CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build ${GO_LDFLAGS} -o ${WIN_LABELS} main.go

build-all: build-lux build-mac build-win 

help:
	@echo ""
	@echo "Build Usage:" 
	@echo "\033[32m    build-lux          \033[0m" "\033[36m to build binary program under Linux platform.   \033[0m"
	@echo "\033[32m    build-mac          \033[0m" "\033[36m to build binary program under Mac OS platform. \033[0m"
	@echo "\033[32m    build-mac          \033[0m" "\033[36m to build binary program under Windows platform. \033[0m"
	@echo "\033[32m    build-all          \033[0m" "\033[36m to build all programs binary programs.  \033[0m"
	@echo ""