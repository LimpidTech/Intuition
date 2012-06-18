examples_path=$(binaries_path)/examples

export examples_path

all: $(examples_path)
	$(MAKE) -C simple

$(examples_path):
	mkdir -p $(examples_path)

clean:
	$(MAKE) clean -C simple

	-rm -rf $(examples_path)

