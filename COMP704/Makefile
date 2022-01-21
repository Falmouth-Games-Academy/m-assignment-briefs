assignment_tex := $(wildcard *.tex)
assignments := $(patsubst %.tex,%.pdf,$(assignment_tex))
assignments_a18y := $(patsubst %.tex,%-a18y.pdf,$(assignment_tex))

.PHONY: clean all briefs
all: clean briefs

clean:
	rm -rf build/
	rm -f *.pdf

briefs: $(assignments) $(assignments_a18y)

%.pdf: %.tex
	echo $*
	latexmk -pdf $<
	qpdf --linearize --optimize-images build/$*.pdf build/$*_opti.pdf || true
	cp build/$*_opti.pdf $*.pdf

%-a18y.pdf: %.tex
	latexmk -pdf --jobname=$*-a18y $<
	cp build/$*-a18y.pdf $*-a18y.pdf

