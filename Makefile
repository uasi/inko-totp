.PHONY: all
all: build/totp

.PHONY: clean
clean:
	rm -rf build

build/totp:
	inko build bin/main.inko -i src -o build/totp
