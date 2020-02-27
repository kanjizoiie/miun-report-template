CC = xelatex
SRC_DIR = "."
OUT_DIR = "./output/"
SRC = $(shell find $(SRC_DIR) -name 'main.tex')

# Build All

build: $(SRC)
	$(CC) -output-directory=$(OUT_DIR) $<

view: build
	open output.pdf

clean-community:
	rm -rf $(SRC_DIR)/*.pdf
