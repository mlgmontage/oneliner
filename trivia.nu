#!/usr/bin/env nu

let arrow = (open facts.txt | lines)
let delay = 40000

for line in $arrow {
    notify-send -t $delay $line;
    sleep ($"($delay)ms" | into duration);
}
