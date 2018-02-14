all:
	gitbook build . #--log=debug --debug
pdf:
	gitbook pdf .
run:
	open _book/index.html
