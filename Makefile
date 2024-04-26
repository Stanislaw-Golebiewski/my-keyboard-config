
MY_LAYOUT_NAME=Stanislaw-Golebiewski

.PHONY: set-defaults check install compile flash

set-defaults:
	qmk config user.keyboard=keebio/iris/rev8
	qmk config user.keymap=$(MY_LAYOUT_NAME)

check-qmk:
	which qmk 2>/dev/null || (echo "QMK is not installed." && exit 1)

install: 
	mkdir -p ~/qmk_firmware/keyboards/keebio/iris/keymaps/$(MY_LAYOUT_NAME)
	ln -sf `pwd`/src/* ~/qmk_firmware/keyboards/keebio/iris/keymaps/$(MY_LAYOUT_NAME)

compile: check-qmk install 
	qmk compile

flash: check-qmk install
	qmk flash









