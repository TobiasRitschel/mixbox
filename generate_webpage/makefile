#################################################
# YOU SHOULD NOT NEED TO MODIFY THE LINES BELOW #
#################################################
USER 		= tksr
MAKEFILE  	= ./makefile
SOURCEDIR 	= ./src
HTMLDIR   	= ./html
PDFDIR 		= ./pdf
EQDIR       	= ./eqs
SOURCE 		= $(wildcard $(SOURCEDIR)/*.jemdoc)
TARGET 		= $(addprefix $(HTMLDIR)/, $(notdir $(SOURCE:.jemdoc=.html)))
STYLE  		= css/jemdoc.css
MENU		= MENU
WEBSITE 	= \
	$(addprefix ../, $(notdir $(SOURCE:.jemdoc=.html))) \
	$(addprefix ../, $(notdir $(PHOTO))) \
	$(addprefix ../, $(notdir $(STYLE)))

.phone: all clean

# IF index.jemdoc IS MODIFIED RECOMPILE index.html AND MOVE TO TOP-LEVEL FOLDER #
all: $(WEBSITE) $(TARGET)

$(WEBSITE): $(TARGET)
	@cp -r $(TARGET) $(STYLE) $(PDFDIR) $(EQDIR) ..

$(TARGET): $(STYLE) $(MENU) $(SOURCE) $(MAKEFILE)
	@jemdoc.py -c mysite.conf $(SOURCE)
	@mv $(SOURCEDIR)/*.html $(HTMLDIR)

clean:
	@rm -f $(HTMLDIR)/*
	@rm -f $(EQDIR)/*
	@rm -f $(EQDIR)/.eqsdepthcache
