NOTEBOOK=Capstone-Project

HTMLDIR=html

html:
	uv run --with jupyter jupyter nbconvert --to html --output-dir=${HTMLDIR} ${NOTEBOOK}.ipynb

clean:
	$(RM) -r ${HTMLDIR}

.PHONY: html