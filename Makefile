default: test

test:
	# test bop

install:
	# symlink
	ln -s ./bin/bop /usr/local/bin/bop

.PHONY: test
