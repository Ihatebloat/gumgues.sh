#!/bin/bash
clear
NUM=$((RANDOM % 100))
TRIES=0
while true; do
UNUM=$(gum input --char-limit="2" --header="Guess a number from 0 to 99" --prompt="?: " --placeholder="00" --no-show-help | tr -dc "0-9")
if [ -z "$UNUM" ]; then
exit
fi
if ((NUM > UNUM)); then
echo "Your num is bigger than the random one, $UNUM"
TRIES=$(( "$TRIES" + 1 ));
elif ((NUM < UNUM)); then
echo "Your num is smaller than the random one, $UNUM"
TRIES=$((TRIES + 1));
elif ((NUM == UNUM)); then
echo "Your num is correct! $NUM"
TRIES=$((TRIES + 1))
echo "You guessed it in $TRIES tries"
exit
fi
done
