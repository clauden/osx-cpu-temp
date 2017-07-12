# read last 50 lines from stdin every second
# x = time (format)
# y = temp (float)

set xdata time
set timefmt "%H:%M:%S"
set yrange [20:100]
plot "<tail -50" using 1:2 with lines
# plot "/tmp/temp.txt" using 1:2 with lines
## plot "/tmp/temp.txt" using 2:xticlabels(1) with lines
pause 1
reread
