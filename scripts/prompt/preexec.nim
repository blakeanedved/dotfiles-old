import times, os, strformat, strutils
let t = now().format("HH:mm:ss-dd:MM:YYYY")
writeFile(expandTilde("~/dotfiles/scripts/prompt/.timer"), fmt"{paramStr(1).split(' ')[0]} {t}")
