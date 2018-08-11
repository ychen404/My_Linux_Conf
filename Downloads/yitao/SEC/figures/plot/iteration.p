reset
bm = 0.24
lm = 0.15
rm = 0.75
tm = 1
gap = 0.05
size = 0.75
kk = 0.35 # relative height of bottom plot

set style line 1  linecolor rgb "#0000CC"  linewidth 3.000 dashtype 1 pointtype 1 pointsize 3 pointinterval 0
set style line 2  linecolor rgb "#8B4513"  linewidth 2.000 dashtype 2 pointtype 2 pointsize 3 pointinterval 0
set style line 3  linecolor rgb "#FF0000"  linewidth 3.000 dashtype 5 pointtype 3 pointsize 3 pointinterval 0
set style line 4  linecolor rgb "#006400"  linewidth 2.000 dashtype 4 pointtype 4 pointsize 3 pointinterval 0

set xlabel "Batch" font ",40" offset -0.5,0.5
set ylabel "Time per iteration (s)" font ",40" offset 2.9,-0.3
set y2label "Time per epoch (s)" font ",40" offset -1.9,-0.3
set terminal postscript eps size 6, 4 enhanced color font ',45'
set output "../iteration.eps"
#set output "fc-only-inference.eps"

set xtics nomirror
set ytics nomirror
set lmargin at screen lm
set rmargin at screen rm
set bmargin at screen bm-0.03
set tmargin at screen tm - 0.06

set ytics font ", 32" offset "0.5, 0"
set y2tics font ", 32" offset "0, 0.5"
set xtics font ", 32" offset "-0.5, 0"

set yrange [0:*]
#set key at 4.1,65 samplen 2 width 0 spacing 1.2 height 1.7 vertical font ",30" maxrows 4
#set key at 2.75,75 samplen 3 width 0 spacing 1.2 height 1.7 font ",30" maxrows 4
#set nokey
set key left samplen 2 

set datafile sep ','
set style data linespoints

set y2tics 1
set y2range [4300:5000]
set y2tics 100

plot "iteration.csv" using 2:xtic(1) title "L=1" ls 1 lw 5 axis x1y1, \
					'' u 3 title "L=2" ls 2 lw 8 axis x1y2, \
					#'' u 4 title "L=4" ls 3 lw 8, \
					#'' u 5 title "L=8" ls 4 lw 8