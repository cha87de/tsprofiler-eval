set datafile separator ";"
#set term png size 800,400
#set output 'by-mode-duration.png'

set terminal pdf size 4,2.4
set output 'by-mode-duration.pdf'

#x axis formatting
set xlabel 'Profiler Mode'

#y axis formatting
set ylabel 'Duration [s]'

# box settings
set boxwidth 0.24
set yrange [0:900]
set xrange [0.5:4]

# styles
set style line 1 lc rgb 'gray10' lt 1 lw 1
set style line 2 lc rgb 'gray90' lt 1 lw 1
set style line 3 lc rgb 'gray50' lt 1 lw 1
set style fill solid 0.2 border rgb 'gray30'

#set autoscale

plot \
    "by-mode-duration-hpc.csv" using 1:3:4:xtic(2) with boxerrorbars ls 1 title 'HPC', \
    "by-mode-duration-hpcmulti.csv" using 1:3:4:xtic(2) with boxerrorbars ls 3 title 'HPC Multi', \
    "by-mode-duration-uninet.csv" using 1:3:4 with boxerrorbars ls 2 title 'Cloud'