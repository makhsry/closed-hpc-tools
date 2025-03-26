set xdata time
set timefmt "%s"
set format x "%Y-%m-%d\n%H:%M:%S"
set xlabel "Time"
set ylabel "Jobs"
set grid
set title "Job Start Times"
set terminal pngcairo size 1280,720
set output "job_start_times.png"
#
plot for [f in system("ls *.starttime")] f using 1:0 with linespoints title f
#
