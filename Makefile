OUT_DIR ?= resume

.PHONY: all clean main emertxe main_og emertxe_og

all: main emertxe main_og emertxe_og

main:
	@mkdir -p $(OUT_DIR)
	tectonic -o $(OUT_DIR) main.tex

emertxe:
	@mkdir -p $(OUT_DIR)
	tectonic -o $(OUT_DIR) emertxe.tex

main_og:
	@mkdir -p $(OUT_DIR)
	tectonic -o $(OUT_DIR) main_og.tex

emertxe_og:
	@mkdir -p $(OUT_DIR)
	tectonic -o $(OUT_DIR) emertxe_og.tex

clean:
	rm -rf $(OUT_DIR)/*.pdf
