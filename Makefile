all:
	gitbook build . #--log=debug --debug
pdf:
	gitbook pdf .
run:
	gitbook build . #--log=debug --debug
	open _book/index.html
