set autoscale
set title "ENG1 RAM Usage/Time"
set xlabel "Date and Time"
set ylabel "RAM % Usage"
set xdata time
set timefmt "%s"
set xtics 600
set format x "%a %D %H:%M:%S"
set xtics rotate
plot "ramcheck.csv" using 1:2 with linespoints
