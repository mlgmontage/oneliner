#!/usr/bin/env nu

def liner [filename] {
    let arrow = (open $filename | lines)
    let delay = 30000

    for line in $arrow {
        notify-send -t $delay $line;
        sleep ($"($delay)ms" | into duration);
    }
}
