BDIR = ../bin
ODIR = ../obj
DDIR = ../dist
IDIR = ../include

CC=gcc
CFLAGS=-I$(IDIR)


_DEPS = hello.h
#
# $(patsubst pattern,replacement,text)
#
# In "text", find the pattern "%", and 
# change "%" to be "replacement".
#
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))


_OBJ = $(sort hellomake.o hellofunc.o)
#
# $(patsubst pattern,replacement,text)
#
# In "text", find the pattern "%", and 
# change "%" to be "replacement".
#
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))


LIBS = -lm

EXECUTABLE = hello

build: $(EXECUTABLE)

#
# Foreach .o target depends on each .c version of the file
# and the .h file.  The .h files are included in the DEPS
# macro.
#
# The -c flag says to generate the object file, the -o $@ says
# to put the output of the compilation in the file named on the
# left side of the :, the $< is the first item in the 
# dependencies list, and the CFLAGS macro is defined as above.
#
# "$<" is the first item in the dependencies list
#
$(ODIR)/%.o: %.c $(DEPS)
	mkdir -p $(ODIR)
	$(CC) -c -o $@ $< $(CFLAGS)

#
# "$@" is the left side of the ":"
# "$^" is the right side of the ":"
#
$(EXECUTABLE): $(OBJ)
	mkdir -p $(BDIR)
	$(CC) -o $(BDIR)/$@ $^ $(CFLAGS) $(LIBS)

#
# <target> : <dependencies>
#          <command>
#          ...
#
install: $(EXECUTABLE)
	echo Installing...
	@mkdir -p $(DDIR)
	@mv $(BDIR)/$(EXECUTABLE)  $(DDIR)


.PHONY: clean
.PHONY: clobber

clean:
	rm -f *.o $(ODIR)/*.o *~ core $(INCDIR)/*~ 

clobber:
	rm -rf *.o $(BDIR) $(ODIR) *~ core $(INCDIR)/*~ $(DDIR)

