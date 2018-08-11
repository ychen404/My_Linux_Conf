reset
dx=2.
n=2
total_box_width_relative=4
gap_width_relative=0
d_width=(gap_width_relative+total_box_width_relative)*dx/4.
#reset
#bm = 0.15
#lm = 0.18
#rm = 0
#tm = -10
gap = 0.05
size = 0.75
#kk = 0.66 # relative height of bottom plot

set boxwidth 2
set offset -7,-7,0,0


#set size ratio 0.5
set terminal postscript eps size 18,4 enhanced color font ',20'

set output "/home/yitao/Downloads/yitao/hpdc/figures/multiplot.eps"
set xtics nomirror
set ytics nomirror
set xtics ( "Training" 2.5, "Inference" 25)
#set key outside


set multiplot layout 1, 3;

set title "Figure 1"
set lmargin 7
set rmargin 0
set tmargin 2
set bmargin 6
#set key off
set key at 80,-0.5 samplen 3 width 5 spacing 1 height 0.7 vertical maxrows 1 font ",30"

set yrange [0:3]
set xtics font ", 30" offset 0,0.3
set ylabel "Mem Utilization (%)" font ",30" offset 1.5,0
plot "mem_util.csv" using 1:2 with boxes title "Nexus 7(CPU)" fs fill solid 0.5 lt 3, \
                             '' u ($1+d_width):3 with boxes title "Nexus 5(CPU)" fs pattern 2 lt 1, \
                             '' u ($1+2*d_width):4 with boxes title "Server(CPU)" fs pattern 4 lt -1 ,\
                             '' u ($1+3*d_width):5 with boxes title "Server(GPU)" fs pattern 5 lt 4 lc rgb 'red' lw 2



set title "Figure 2"
set lmargin 7
set rmargin 0
set tmargin 2
set bmargin 6

set key off
set yrange [0:400]
set xtics font ", 30" offset 0,0.3
set ylabel "Core Utilization (%)" font ",30" offset 1.5,0
plot "core_util.csv" using 1:2 with boxes title "Nexus 7(CPU)" fs fill solid 0.5 lt 3 , \
                            '' u ($1+d_width):3 with boxes title "Nexus 5(CPU)" fs pattern 2 lt 1, \
                            '' u ($1+2*d_width):4 with boxes title "Server(CPU)" fs pattern 4 lt -1 ,\
                            '' u ($1+3*d_width):5 with boxes title "Server(GPU)" fs pattern 5 lt 4 lc rgb 'red' lw 2





set title "Figure 3"
set lmargin 7
set rmargin 2
set tmargin 2
set bmargin 6

set key off
set yrange [0:*]
set ylabel "Time (s)" font ",30" offset 2,0
set xtics font ", 30" offset 0,0.3

plot "avg_time.csv" using 1:2 with boxes title "Nexus 7(CPU)" fs fill solid 0.5 lt 3 , \
                            '' u ($1+d_width):3 with boxes title "Nexus 5(CPU)" fs pattern 2 lt 1, \
                            '' u ($1+2*d_width):4 with boxes title "Server(CPU)" fs pattern 4 lt -1 ,\
                            '' u ($1+3*d_width):5 with boxes title "Server(GPU)" fs pattern 5 lt 4 lc rgb 'red' lw 2


unset multiplot





#set ylabel "Mem Utilization (%)" font ",32" offset 1.5,0
##set terminal postscript eps size 4.75, 2.5 enhanced color font ',30'
##set output "/home/yitao/Downloads/yitao/hpdc/figures/mem_util.eps"
#set boxwidth 5
#
#set xtics nomirror
#set ytics nomirror
##set lmargin at screen lm
##set rmargin at screen rm
##set bmargin at screen bm
#
#set ytics font ", 30" offset 0,0
#set yrange [0:*]
#
#set offset -7,-7,0,0
#
##set xtics ( "0" 7.5, "25" 32.5, "50" 58, "75" 82.5, "100" 107 )
#set xtics ( "Training" 7.5, "Inference" 32.5)
#set xtics font ", 30" offset 0,0.3
#set xtics format ""
#set style data histogram
#set style histogram
