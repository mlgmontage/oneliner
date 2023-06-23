#!/usr/bin/env nu

let reference = (help commands | where category != 'dataframe' | where category != 'lazyframe' | where not name starts-with 'dfr')
let len = ($reference | length) - 1

let delay = 40000

let array = 0..$len

for i in $array {
    let point = ($reference | get $i)

    let name = ($point | get name)
    let category = ($point | get category)
    let usage = ($point | get usage)


    notify-send -t $delay $" ($category): ($name) - ($usage)";
    sleep ($"($delay)ms" | into duration);
}
