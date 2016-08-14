FILES=src/xcd.rb
INSTALL_DIR=/usr/local/bin
BINARY=xcd

all:
	src/xcd.rb

install:
	chmod +x $(FILES)
	cp $(FILES) $(INSTALL_DIR)/$(BINARY)

uninstall:
	echo "Remove ${BINARY} in $(INSTALL_DIR)"
