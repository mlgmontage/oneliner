#!/usr/bin/env nu

let filename = "~/notes/win.txt"


def win [point title] {
    $filename | path exists

    let rating = (open $filename | lines | each { |it| split chars | first | into int } | math sum) + 1000

    $"($point) ($title)\n" | save -a ($filename | path expand);
    print $"+($point) ($rating)";
}
