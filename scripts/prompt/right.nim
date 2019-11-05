import
  nicy,
  strformat,
  strutils,
  times,
  os

func returnCondition*(ok: string, ng: string, delimiter = "."): string {.inline.} =
  result = fmt"%(?{delimiter}{ok}{delimiter}{ng})"

let
  inp = readFile(expandTilde("~/dotfiles/scripts/prompt/.timer")).strip().split(" ")
  t = parse(inp[1], "HH:mm:ss-dd:MM:YYYY")
  n = now()

var a = ""

if n - t > initDuration(seconds=2) and inp[0] != "vim":
  let tmp = between(t, n)
  if tmp.hours > 0:
    a.add(fmt"{tmp.hours}h")
  if tmp.minutes > 0:
    a.add(fmt"{tmp.minutes}m")
  if tmp.seconds > 0:
    a.add(fmt"{tmp.seconds}s")

let
  exit = returnCondition(ok = "👍", ng = "👎")
  currentTime = now().format("h:mmtt")
  runtime = color(a, "magenta")

echo fmt"{runtime} {exit} {currentTime}"
