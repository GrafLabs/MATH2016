%.pdf: %.tex
	mkdir -p build
	cd build/ && latex -output-format=pdf ../$<
	mv build/$@ $@

clean-all: clean
	rm -f *.pdf

clean:
	if [ -d build ]; then rm -rf build/; fi

.PHONY: all clean clean-all