NOTEBOOK=Capstone-Project

MKFILE_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
CURRENT_DIR := $(notdir $(patsubst %/,%,$(dir $(MKFILE_PATH))))

HTMLDIR=html

html:
	uv run --with jupyter jupyter nbconvert --to html --output-dir=${HTMLDIR} ${NOTEBOOK}.ipynb
	mv ${HTMLDIR}/${NOTEBOOK}.html ./index.html

clean:
	$(RM) -r ${HTMLDIR}
	$(RM) ${CURRENT_DIR}/index.html

.PHONY: html