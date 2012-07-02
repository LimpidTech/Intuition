cc=gcc
objects=modules.o
output_filename=$(libraries_path)/libi.so

$(output_filename): $(objects)
	$(cc) -shared "-Wl,-soname,$(output_filename)" -o $@ $^

$(objects): %.o: %.c
	$(cc) $(CFLAGS) -fPIC -c $<

clean:
	-rm -f $(objects)

.PHONY: clean

