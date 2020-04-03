#set term png size 800,400
#set output 'by-buffersize-avgdiff.png'

set terminal pdf size 4,2.4
set output 'by-buffersize-avgdiff.pdf'

#x axis formatting
set xlabel 'buffer size'

#y axis formatting
set ylabel 'Average Diff'

# styles
set style line 1 \
    linecolor rgb '#303030' \
    linetype 1 linewidth 1.0 \
    pointtype 6 pointsize 1.0
set style line 2 \
    linecolor rgb '#303030' \
    linetype 1 linewidth 1.0 \
    pointtype 25 pointsize 1.0
set style line 3 \
    linecolor rgb '#A0A0A0' \
    linetype 1 linewidth 1

set autoscale

plot \
    "by-buffersize-avgdiff-hpc.csv" using 1:2:3 with errorbars ls 3 notitle, "" using 1:2 with linespoints ls 1 title 'HPC', \
    "by-buffersize-avgdiff-uninet.csv" using 1:2:3 with errorbars ls 3 notitle, "" using 1:2 with linespoints ls 2 title 'Cloud'
