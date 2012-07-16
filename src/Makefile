cc=gcc
cxx=g++
objects=modules.o
output_filename=$(libraries_path)/libi.so

$(output_filename): $(objects)
	$(cc) -shared "-Wl,-soname,$(output_filename)" -o $@ $^

$(objects): %.o: %.cxx
	$(cxx) $(CFLAGS) -fPIC -c $<

clean:
	-rm -f $(objects)

.PHONY: clean

