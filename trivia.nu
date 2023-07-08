#!/usr/bin/env nu

let filename = "~/notes/log.txt"

def liner [filename delay] {
    let arrow = (open $filename | lines)

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
