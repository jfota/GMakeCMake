export RM       = /bin/rm
export CC       = /usr/bin/gcc
export TOPDIR   = `pwd`
export OPTIMIZE = -O
export MAKEFILE = Makefile

SRCDIRS  = src


ALL:	install

build:
	@for dir in $(SRCDIRS); do \
            echo "cd into $${dir}"; \
            cd $${dir}; \
            make ;\
	done ;

install:
	@for dir in $(SRCDIRS); do \
            echo "cd into $${dir}"; \
            cd $${dir}; \
            make install;\
	done ;

clean:
	@for dir in $(SRCDIRS); do  \
            echo "cd into $${dir}"; \
            cd $${dir}; \
            make clean; \
	done ;

clobber:
	@for dir in $(SRCDIRS); do  \
            echo "cd into $${dir}"; \
            cd $${dir}; \
            make clobber; \
	done ;
