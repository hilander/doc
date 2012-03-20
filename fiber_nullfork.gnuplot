set terminal pdf enhanced mono dashed font "Helvetica,4" dashlength 0.4
set output "fiber_nullfork.pdf"
set encoding utf8
set xlabel "liczba wątków"
set ylabel "Czas [µs]"
set xr [0:10100]
plot "./fiber_nullfork.pairs" using 1:2 title "fiber-nullfork" with lines\
,   "./pthread_nullfork.pairs" using 1:2 title "pthread-nullfork" with lines
