reset
dx=5.
n=2
total_box_width_relative=4
gap_width_relative=0
d_width=(gap_width_relative+total_box_width_relative)*dx/4.
#d_width = 10
#reset
bm = 0.15
lm = 0.18
rm = 0
tm = -10
gap = 0.05
size = 0.75
#kk = 0.66 # relative height of bottom plot

set size ratio 0.5


set ylabel "Mem Utilization (GB)" font ",32" offset 1.5,0
set terminal postscript eps size 4.75, 2.5 enhanced color font ',30'
set output "../mem_util.eps"
set boxwidth 5

set key off
set xtics nomirror
set ytics nomirror
set lmargin at screen lm
set rmargin at screen rm
set bmargin at screen bm

set ytics font ", 30" offset 0,0
set yrange [0:*]

set offset -7,-7,0,0

#set xtics ( "0" 7.5, "25" 32.5, "50" 58, "75" 82.5, "100" 107 )
set xtics ( "Training" 7.5, "Inference" 32.5)
set xtics font ", 30" offset 0,0.3
set xtics format ""
set style data histogram
set style histogram

plot "mem_util.csv" using 1:2 with boxes title "Nexus 7(CPU)" fs fill solid 0.5 lt 3 , \
                             '' u ($1+d_width):3 with boxes title "Nexus 5(CPU)" fs pattern 2 lt 1, \
                             '' u ($1+2*d_width):4 with boxes title "Server(CPU)" fs pattern 4 lt -1 ,\
                             '' u ($1+3*d_width):5 with boxes title "Server(GPU)" fs pattern 5 lt 4 lc rgb 'red' lw 2
