import times, os, strformat, strutils
let inp = readFile(expandTilde("~/dotfiles/scripts/prompt/.timer")).strip().split(" ")
let t = parse(inp[1], "HH:mm:ss-dd:MM:YYYY")
let n = now()
var a = ""
if n - t > initDuration(seconds=1) and inp[0] != "vim":
  let tmp = between(t, n)
  if tmp.hours > 0:
    a.add(fmt"{tmp.hours}h")
  if tmp.minutes > 0:
    a.add(fmt"{tmp.minutes}m")
  if tmp.seconds > 0:
    a.add(fmt"{tmp.seconds}s")
writeFile(expandTilde("~/dotfiles/scripts/prompt/.timer"), fmt"{a}")
