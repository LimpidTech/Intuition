cc=gcc
objects=modules.o
output_filename=$(libraries_path)/libi.so

$(output_filename): $(objects)
	$(cc) -shared -W1,-soname,$(output_filename) -o $@ $(objects)

$(objects): %.o: %.c
	$(cc) $(CFLAGS) -fPIC -c $<

clean:
	-rm -f $(objects)

.PHONY: clean

