.PHONY: all
all: build/totp

build/totp:
	inko build bin/main.inko -i src -o build/totp
