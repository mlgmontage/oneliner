#!/usr/bin/env nu

let arrow = (open snippets.txt | split column "<=>" | transpose | get column1)
let delay = 60000

for line in $arrow {
    print $line
    notify-send -t $delay $line 
    sleep ($"($delay)ms" | into duration)
}
