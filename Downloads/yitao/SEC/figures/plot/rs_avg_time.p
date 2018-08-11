reset
dx=5.
n=2
total_box_width_relative=4
gap_width_relative=0
d_width=(gap_width_relative+total_box_width_relative)*dx/4.
reset
bm = 0.1
lm = 0.1
rm = 0.3
tm = 0.3
#gap = 0.05
size = 0.5
kk = 0.66 # relative height of bottom plot
#y1 = 0.0; y2 = 100.0; y3 = 1900.0; y4 = 150;

#set size ratio 0.5

#set style data histogram
#set style histogram cluster gap 1
#set style fill solid border -1
set key top left noenhanced 
set ylabel "Time (s)" font ",22" offset 2,0
set terminal postscript eps size 3, 1.25 enhanced color font ',20'
set output "../rs_avg_time.eps"
set boxwidth 5

set xtics nomirror
set ytics nomirror
#set lmargin lm 
set rmargin 0.7
set bmargin 1.5
set tmargin 1

set ytics font ", 20" offset 0.5,0

set yrange [0:*]

#set key at 4,1850 box lw 0.5  samplen 5 spacing 1 width 1 height 0.7

#set key at 3.67,148 box lw 0.7 samplen 4 spacing 1 width 1.3  height 0.7 vertical font ",30"
#set key top left box lw 0.7 samplen 4 spacing 1.25 width 1.3  height 0.7 maxrows 2 vertical font ",13"
#set key at 2.1,49 box lw 0.3 samplen 1.5 spacing 1.0 width 0.7 height 0.7 vertical

#set key at 123,7.1 samplen 1.5 width -3 spacing 0.7 height 0.5 vertical maxrows 1 font ",20"


set offset -6,-6,0,0
#set datafile sep ','

set xtics ( "64" 7.5, "128" 32.5, "256" 57.5)
set xtics font ", 20" offset 0,0.3
set xtics format ""
set style data histogram
set style histogram
#set key outside

plot "rs_avg_time.csv" using 1:2 with boxes title "RSFB" fs fill solid 0.5 lt 3 , \
                            '' u ($1+d_width):3 with boxes title "RSTF" fs pattern 2 lt 1, \
                            '' u ($1+2*d_width):4 with boxes title "Eigen" fs pattern 4 lt -1 
