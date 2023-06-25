#!/usr/bin/env nu

let filename = "~/notes/log.txt"

def liner [filename] {
    let arrow = (open $filename | lines)
    let delay = 30000

    for line in $arrow {
        notify-send -t $delay $"> ($line)";
        sleep ($"($delay)ms" | into duration);
    }
}

def noter [note] {
    $filename | path exists
    $"($note)\n" | save -a ($filename | path expand)
}

def shower [] {
    open $filename | lines
}