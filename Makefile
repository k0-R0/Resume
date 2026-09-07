OUT_DIR ?= resume

.PHONY: all clean main emertxe

all: main emertxe

main:
	@mkdir -p $(OUT_DIR)
	tectonic -o $(OUT_DIR) main.tex

emertxe:
	@mkdir -p $(OUT_DIR)
	tectonic -o $(OUT_DIR) emertxe.tex

clean:
	rm -rf $(OUT_DIR)/*.pdf
