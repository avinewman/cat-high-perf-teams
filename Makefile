LATEX_NAME = cat-high-perf-teams
distribute: build
	cp src/$(LATEX_NAME).dvi out
	cp src/$(LATEX_NAME).ps out
	cp src/$(LATEX_NAME).pdf out
	cp src/html/$(LATEX_NAME).html out
	cp src/html/$(LATEX_NAME).css out
	test ! -s src/lint.out

setup:
	mkdir -p out

build: setup
	$(MAKE) -C src

publish: distribute
	aws --profile couragelabs s3 sync out s3://cl-$(LATEX_NAME)

.PHONY: clean

clean:
	rm -rf out
	$(MAKE) -C src clean
