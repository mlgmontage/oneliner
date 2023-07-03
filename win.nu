#!/usr/bin/env nu

let filename = "~/notes/win.txt"

def win [point title] {
    $filename | path exists
    $"($point) ($title)\n" | save -a ($filename | path expand)
}

def rating [] {
    open $filename | lines | each { |it| split chars | first | into int } | math sum
}
