#set term png size 800,400
#set output 'by-periodsize-avgdiff.png'
set datafile separator ";"

set terminal pdf size 4,2.4
set output 'by-periodsize-avgdiff.pdf'

#x axis formatting
set xlabel 'period size'

#y axis formatting
set ylabel 'Average Diff'

# box settings
set boxwidth 0.24
set yrange [0:70]
set xrange [0.5:4.5]

# styles
set style line 1 lc rgb 'gray10' lt 1 lw 1
set style line 2 lc rgb 'gray90' lt 1 lw 1
set style fill solid 0.2 border rgb 'gray30'

#set autoscale

plot \
    "by-periodsize-avgdiff-hpc.csv" using 1:3:4:xtic(2) with boxerrorbars ls 1 title 'HPC', \
    "by-periodsize-avgdiff-uninet.csv" using 1:3:4:xtic(2) with boxerrorbars ls 2 title 'Cloud'

