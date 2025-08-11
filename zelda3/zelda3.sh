#!/bin/env sh

cd /usr/share/zelda3 || exit

if [ -n "$XDG_CONFIG_HOME" ]; then
	CONFIG_DIR="$XDG_CONFIG_HOME"
else
	CONFIG_DIR="$HOME/.config"
fi

ZELDA3_DIR="$CONFIG_DIR/zelda3"
CONFIG_FILE="$ZELDA3_DIR/zelda3.ini"

if [ -e "$ZELDA3_DIR" ]; then
	if [ -d "$ZELDA3_DIR" ]; then
		if [ -f "$CONFIG_FILE" ]; then
			./zelda3 --config "$CONFIG_FILE"
			exit 0
		fi
	fi
fi

./zelda3
