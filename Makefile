OUTPUT_PATH?="$(HOME)"
INPUT_PATH?="$(CURDIR)"

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


clone:
	cp "$(OUTPUT_PATH)/.vimrc" "$(INPUT_PATH)/.vimrc"
