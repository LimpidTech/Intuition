cc=gcc
objects=main.o
output_filename=$(examples_path)/simple

vpath %.so $(libraries_path)
vpath %.a $(libraries_path)

all: $(output_filename)

$(output_filename): $(objects)

$(objects): %.o: %.c -li
	$(cc) $(libraries_path)/libi.so $(CFLAGS) $< -o $(output_filename)

clean:
	-rm -f $(output_filename)

$(examples_path):
	mkdir -p $(examples_path)

.PHONY: all clean

