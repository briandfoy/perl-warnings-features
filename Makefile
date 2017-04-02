PERLS_DIR  ?= /usr/local/perls
PERLS_FILE ?= perls.txt

.PHONY: perls
perls:
	find ${PERLS_DIR} -name "perl" > ${PERLS_FILE}

.PHONY: features
features:
	./run_perls ${PERLS_FILE}
