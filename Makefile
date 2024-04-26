
MY_LAYOUT_NAME=Stanislaw-Golebiewski

set-defaults:
	qmk config user.keyboard=keebio/iris/rev8
	qmk config user.keymap=$(MY_LAYOUT_NAME)

regenerate-json:
	mkdir -p configurator
	qmk c2json src/keymap.c -o configurator/keymap.json

compile: 
	mkdir -p ~/qmk_firmware/keyboards/keebio/iris/keymaps/$(MY_LAYOUT_NAME)
	ln -sf `pwd`/src/* ~/qmk_firmware/keyboards/keebio/iris/keymaps/$(MY_LAYOUT_NAME)
	qmk compile








