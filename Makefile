LATEX_NAME = cat-high-perf-teams
distribute: build
	cp src/$(LATEX_NAME).pdf out
	test ! -s src/lint.out

setup:
	mkdir -p out

build: setup
	cd src && $(MAKE) 

publish: distribute
	aws --profile couragelabs s3 sync out s3://$(LATEX_NAME)

.PHONY: clean

clean:
	rm -rf out
	$(MAKE) -C src clean
