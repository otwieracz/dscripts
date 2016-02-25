player="mpv"
EXEC="screen -ls | grep -q radio-$alias && screen -X -S radio-$alias quit && echo $TITLE killed || screen -dmS radio-$alias $player $url"
