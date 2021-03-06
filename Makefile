OUTPUT_PATH?="$(HOME)"
INPUT_PATH?="$(CURDIR)"
DIFF=colordiff -N -r

.PHONY: help

help:
	echo "run \`make install\` to install the config files"
	echo "run \`make clone\` to copy files from your current setup"
	echo "OUTPUT_PATH (Default to ~)"
	echo "INPUT_PATH (Default to WORKDIR)"
	echo "##############################################################"
	echo "OUTPUT_PATH=$(OUTPUT_PATH)"
	echo "INPUT_PATH=$(INPUT_PATH)"


install:
	cp "$(INPUT_PATH)/.vimrc" "$(OUTPUT_PATH)/.vimrc"
	cp "$(INPUT_PATH)/.xsettingsd" "$(OUTPUT_PATH)/.xsettingsd"
	cp "$(INPUT_PATH)/user.js" "$(shell find $(OUTPUT_PATH)/.mozilla/firefox/ -maxdepth 1 | grep .default)/user.js"

diff:
	$(DIFF) "$(INPUT_PATH)/.vimrc" "$(OUTPUT_PATH)/.vimrc"
	$(DIFF) "$(INPUT_PATH)/.xsettingsd" "$(OUTPUT_PATH)/.xsettingsd"
	$(DIFF) "$(INPUT_PATH)/user.js" "$(shell find $(OUTPUT_PATH)/.mozilla/firefox/ -maxdepth 1 | grep .default)/user.js"

clone:
	cp "$(OUTPUT_PATH)/.vimrc" "$(INPUT_PATH)/.vimrc"
	cp "$(OUTPUT_PATH)/.xsettingsd" "$(INPUT_PATH)/.xsettingsd"
	cp "$(shell find $(OUTPUT_PATH)/.mozilla/firefox/ -maxdepth 1 | grep .default)/user.js" "$(INPUT_PATH)/user.js"
