# set terminal qt
set terminal jpeg size 800,600
set output "wrold_us.plastic_recycled.jpeg"
set datafile separator ","
set key top left
set title "World Plastic Waste Recycled(with and  w/o US) "
set xlabel "Year"
set ylabel "Percent Recycled"
set grid
# set linetype 1 linewidth 4
set xtics rotate by -45
plot "plastic_waster_difference.csv" using 1:2 with lines linewidth 4 title "World" ,\
     "" using 1:4 with lines linewidth 4 title "W/O US"
     
