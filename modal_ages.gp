set terminal jpeg size 800,600
 set output "us_world_child_mortality_rates.jpeg"

set datafile separator ","
set key outside
set title "US vs World: Child Mortality Rates (1933-2020)"
set xlabel "Year"
set ylabel "Rate (%)"
set grid
set style data lines
set xtics rotate by -45
plot "us_sort.csv" using 3:4 with lines linewidth 3 title "US", \
      "world_sort.csv" using 3:4 with lines linewidth 3 title "World"
