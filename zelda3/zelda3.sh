#!/bin/env sh

if [ -n "$XDG_CONFIG_HOME" ]; then
	CONFIG_DIR="$XDG_CONFIG_HOME"
else
	CONFIG_DIR="$HOME/.config"
fi

ZELDA3_DIR="$CONFIG_DIR/zelda3"
CONFIG_FILE="$ZELDA3_DIR/zelda3.ini"

if [ -e "$ZELDA3_DIR" ]; then
	if [ -f "$ZELDA3_DIR" ]; then
		exit 1
	fi
else
	mkdir -p "$ZELDA3_DIR"
fi

cd "$ZELDA3_DIR"

if [ -f "$CONFIG_FILE" ]; then
	/usr/share/zelda3/zelda3 --config "$CONFIG_FILE"
	exit 0
fi

/usr/share/zelda3/zelda3
