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


set size ratio 0.5

set ylabel "Pwr Consumption (W*s)" font ",30" offset 1.8,0
set terminal postscript eps size 4.75, 2.5 enhanced color font ',30'
set output "../power_consumption.eps"
set boxwidth 0.6
#set offset -0.2,-0.2,0,0


set xtics nomirror
set ytics nomirror
set lmargin at screen lm
set rmargin at screen rm
set bmargin at screen bm


#set ytics y1,50,y4
set ytics font ", 32" offset 0.8,0.0

set datafile sep ','
set xtics ( "A" 0.075, "B" 1.1, "C" 2.1, "D" 3.1)
set xtics font ", 30" offset -0.3,0.3
set xtics format ""
set style data histogram
set style histogram cluster gap 3

set style histogram clustered gap 1

#plot "offline_battery_cmp.csv" using 0:1 with boxes title "Battery Usage (W*s)" fs fill solid 0.5 lt 3

plot "power_consumption.csv" using 0:1 with boxes notitle fs pattern 2 lt 1
#, '' u ($0+0.4):2 with boxes title "Battery (100W*s)" fs pattern 2 lt 4
