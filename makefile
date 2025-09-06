# Call makefile in generate_webpage
all:
	@make -C ./generate_webpage

clean:
	@rm -f   ./*.html
	@rm -f   ./*.css
	@rm -rf  ./src
	@make -C ./generate_webpage clean