all: AA.pdf

%.pdf: %.tex
	mkdir -p build
	cp $< build/$<
	cd build && latex -shell-escape -output-format=pdf $<
	mv build/$@ $@

clean-all: clean
	rm -f *.pdf

clean:
	if [ -d build ]; then rm -rf build/; fi

.PHONY: all clean clean-all