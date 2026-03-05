#!/bin/sh

# if using yazi replace the file in:
# /usr/share/xdg-desktop-portal-termfilechooser/ranger-wrapper.sh
# with this one

multiple="$1"
directory="$2"
save="$3"
path="$4"
out="$5"

cmd="/usr/bin/yazi"
termcmd="${TERMCMD:-/usr/bin/foot}"

if [ "$save" = "1" ]; then
    # Save mode
    "$termcmd" -H -- "$cmd" --chooser-file="$out" "$path"
elif [ "$directory" = "1" ]; then
    # Directory mode
    "$termcmd" -H -- "$cmd" --chooser-file="$out" "$path"
elif [ "$multiple" = "1" ]; then
    # Multiple files
    "$termcmd" -H -- "$cmd" --chooser-file="$out" "$path"
else
    # Single file
    "$termcmd" -H -- "$cmd" --chooser-file="$out" "$path"
fi

if [ "$save" = "1" ] && [ ! -s "$out" ]; then
    rm -f "$path"
fi
