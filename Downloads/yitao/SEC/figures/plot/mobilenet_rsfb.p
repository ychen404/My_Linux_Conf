reset
dx=5.
n=2
total_box_width_relative=4
gap_width_relative=0
d_width=(gap_width_relative+total_box_width_relative)*dx/4.
reset
bm = 0.15
lm = 0.13
rm = 0
tm = -10
gap = 0.05
size = 0.75
kk = 0.66 # relative height of bottom plot
#y1 = 0.0; y2 = 100.0; y3 = 1900.0; y4 = 150;

set size ratio 0.5

#set style data histogram
#set style histogram cluster gap 1
#set style fill solid border -1
#set key top left noenhanced 
#set xlabel "Duplication Ratio (\%)" font ",32" offset 0.3,1.2
set ylabel "Time (s)" font ",32" offset 2.5,0
set terminal postscript eps size 4.75, 2.5 enhanced color font ',30'
set output "../mobilenet_rsfb.eps"
set boxwidth 5

set xtics nomirror
set ytics nomirror
set lmargin at screen lm
set rmargin at screen rm
set bmargin at screen bm
#set tmargin at screen bm + size * kk

#set ytics y1,50,y4
set ytics font ", 30" offset 0.8,0
set yrange [0:*]


set offset -5,-5,0,0
#set datafile sep ','
#set xtics ( "0" 7.5, "25" 32.5, "50" 58, "75" 82.5, "100" 107 )
set xtics ( "Training" 2.5, "Inference" 27)
set xtics font ", 30" offset 0,0.3
set xtics format ""
set style data histogram
#set style histogram cluster gap 1
#set grid ytics
#set xrange [0:100]
set style histogram
#set key outside

plot "mobilenet_rsfb.csv" using 1:2 with boxes title "RSFB" fs fill solid 0.5 lt 3 , \
                            '' u ($1+d_width):3 with boxes title "Eigen" fs pattern 2 lt 1, \
#                            '' u ($1+2*d_width):4 with boxes title "Server(CPU)" fs pattern 4 lt -1 ,\
#                            '' u ($1+3*d_width):5 with boxes title "Server(GPU)" fs pattern 5 lt 4 lc rgb 'red' lw 2
