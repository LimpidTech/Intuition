CFLAGS=

binaries_path = $(CURDIR)/bin
libraries_path = $(CURDIR)/lib
output_paths = $(binaries_path) $(libraries_path)

vpath %.so $(libraries_path)
vpath %.a $(libraries_path)

# Propagates these variables to sub-make processes
export CFLAGS
export binaries_path
export libraries_path

all: $(libraries_path) $(binaries_path)
	$(MAKE) -C src
	$(MAKE) -C examples

clean:
	$(MAKE) clean -C src
	$(MAKE) clean -C examples

	-rm -rf $(output_paths)

$(output_paths):
	mkdir -p $@

.PHONY: all

