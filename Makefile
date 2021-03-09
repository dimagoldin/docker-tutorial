.ONESHELL:
silence = --no-print-directory
SUBDIRS := $(shell find . -type f \( -iname "Makefile" ! -path "*/node_modules/*" ! -path "\./Makefile" \) | \
				cut -c 3-  | rev | cut -c 9-  | rev | sort )
make_subfolders = $(for dir in $(SUBDIRS); do echo Performing make $(1) on path $${dir}; $(MAKE) $(silence) -C $${dir} $(1); done )

all: build

clean:
	for dir in $(SUBDIRS); do
		echo Cleaning path $${dir}
		$(MAKE) $(silence) -C $${dir} clean
	done
	# $(call make_subfolders, clean)

copy:
	for dir in $(SUBDIRS); do
		echo Cleaning path $${dir}
		$(MAKE) $(silence) -C $${dir} copy
	done

build:
	for dir in $(SUBDIRS); do
		echo Building path $${dir}
		$(MAKE) $(silence) -C $${dir} all
	done
	# $(call make_subfolders, all)

build1: 
	$(MAKE) $(silence) -C 1_basic_docker/java all
	$(MAKE) $(silence) -C 1_basic_docker/nodejs all

run1:
	$(MAKE) $(silence) -C 1_basic_docker/java run

build2: 
	$(MAKE) $(silence) -C 1_basic_docker/nodejs all

run2:
	$(MAKE) $(silence) -C 1_basic_docker/nodejs run

size:
	@docker images --format "{{.Repository}} {{.Tag}} {{.Size}}" | grep basic_docker | sort

size_ch1:
	@docker images --format "{{.Repository}} {{.Tag}} {{.Size}}" | grep basic_docker | sort |grep ch1

.PHONY:	all clean build $(SUBDIRS) size
