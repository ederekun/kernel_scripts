#!/bin/bash
#
# Update script
#

source xect

decho "Executing update script..."

param_func "$@"

if [[ $1 == "-x" ]]; then
	update_linux
	exit 0
fi

DIR_LIST=(
	"$REL_DIR"
	"$SRT_DIR"
	"$ZIP_DIR"
	"$CLANG_DIR"
	"${GCC_DIR}64"
	"${GCC_DIR}32"
)

for DIR in ${DIR_LIST[@]}; do
	update_repo $DIR
done

exit 0
