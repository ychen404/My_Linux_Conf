reset
dx=5.
n=2
total_box_width_relative=4
gap_width_relative=0
d_width=(gap_width_relative+total_box_width_relative)*dx/4.
#d_width = 10
#reset
bm = 3.5
lm = 7
rm = 2
tm = 0
gap = 0.05
#size = 0.75


#set size ratio 0.5

set ylabel "Time (ms)" font ",30" offset 2.5,0
#set terminal postscript eps size 4.75, 2.5 enhanced color font ',30'
set terminal postscript eps size 8, 2 enhanced color font ',30'


set output "../training_time_breakdown.eps"
set boxwidth 0.6
#set offset -0.2,-0.2,0,0


set xtics nomirror
set ytics nomirror
set lmargin lm
set rmargin rm
set bmargin bm

set xtics rotate by -90
set ytics 0,200
set yrange[0:900]


#set ytics y1,50,y4
set ytics font ", 24" offset 0.5,0.0

set datafile sep ','
set xtics ( "CONV1" 0.075, "BA1" 1.1, "CONV2" 2.1, "BA2" 3.1, "CONV3" 4.1, "BA3" 5.1, "CONV4" 6.1, "BA4" 7.1, \
						"BG4" 8.1, "GF4" 9.1, "GI4" 10.1, "BG3" 11.1, "GF3" 12.1, "GI3" 13.1, "BG2" 14.1, "GF2" 15.1, "GI2" 16.1, "BG1" 17.1, "GF1" 18.1, "GI1" 19.1 )
set xtics font ", 24" offset -0.3,0.3
set xtics format ""
set style data histogram
set style histogram cluster gap 3

set style histogram clustered gap 1

plot "training_time_breakdown.csv" using 0:1 with boxes notitle fs pattern 2 lt 1
