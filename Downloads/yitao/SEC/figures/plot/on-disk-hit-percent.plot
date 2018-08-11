reset
bm = 0.24
lm = 0.25
rm = 0.95
tm = 1
gap = 0.05
size = 0.75
kk = 0.35 # relative height of bottom plot

set style line 1  linecolor rgb "#0000CC"  linewidth 3.000 dashtype 1 pointtype 1 pointsize 3 pointinterval 0
set style line 2  linecolor rgb "#8B4513"  linewidth 2.000 dashtype 2 pointtype 2 pointsize 3 pointinterval 0
set style line 3  linecolor rgb "#FF0000"  linewidth 3.000 dashtype 5 pointtype 3 pointsize 3 pointinterval 0
set style line 4  linecolor rgb "#006400"  linewidth 2.000 dashtype 4 pointtype 4 pointsize 3 pointinterval 0

set xlabel "In-mem FP store size (MB)" font ",36" offset -1.5,0.5
set ylabel "Percent of duplicates (\%)" font ",40" offset 2.9,-0.3
set terminal postscript eps size 3, 3.7 enhanced color font ',45'
set output "on-disk-hit-percent.eps"

set xtics nomirror
set ytics nomirror
set lmargin at screen lm
set rmargin at screen rm
set bmargin at screen bm-0.03
set tmargin at screen tm - 0.06

set ytics font ", 40" offset "0.5, 0"
set xtics font ", 50" offset "-0.2, 20.5"
set yrange [0:60]
set key at 4.1,65 samplen 2 width 0 spacing 1.2 height 1.7 vertical font ",30" maxrows 4

set datafile sep ','
set style data linespoints

#plot "on-disk-hit-percent.csv" using 2:xtic(1) notitle ls 1 lw 5, '' u 3 notitle ls 2 lw 8, '' u 4 notitle ls 3 lw 8, '' u 5 notitle ls 4 lw 8

plot "on-disk-hit-percent.csv" using 2:xtic(1) title "Trace1" ls 1 lw 5, '' u 3 title "Trace2" ls 2 lw 8, '' u 4 title "Trace3" ls 3 lw 8, '' u 5 title "Trace4" ls 4 lw 8

