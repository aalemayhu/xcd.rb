FILES=src/xcd.rb
INSTALL_DIR=/usr/local/bin

all:
	src/xcd.rb

install:
	chmod +x $(FILES)
	cp $(FILES) $(INSTALL_DIR)/

uninstall:
	echo "Remove ${FILES} in $(INSTALL_DIR)"