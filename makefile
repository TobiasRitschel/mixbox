# Call makefile in generate_webpage
all:
	@make -C ./generate_webpage

clean:
	@rm -f   ./*.html
	@rm -f   ./*.css
	@rm -rf  ./src
	@rm -rf  ./pdf
	@rm -rf  ./eqs
	@make -C ./generate_webpage clean
