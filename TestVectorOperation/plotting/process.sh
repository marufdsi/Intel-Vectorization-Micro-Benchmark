#!/bin/bash

display_usage() { 
	echo "Usage: process.sh <csvfile>"
	} 

# if less than two arguments supplied, display usage 
	if [  $# -le 0 ] 
	then 
		display_usage
		exit 1
	fi 

FILENAMEIN=$1
FILENAMEOUT=`basename ${FILENAMEIN} .csv`.pdf

awk -F , '{if (NR != 1) {print $1, $2, 1000*($1*$2)/$3, 1000*($1*$2)/$4, 1000*($1*$2)/$5, 1000*($1*$2)/$6, 1000*($1*$2)/$7, 1000*($1*$2)/$8;} }' < $FILENAMEIN > edge_per_second


ITERS=$(awk '{print $2}' < edge_per_second | sort -n | uniq)

for iter in $ITERS
do
    awk "{if (\$2 == ${iter}){print \$0} }" < edge_per_second > edge_per_second_iter_${iter}

    GNUPLOTCMDIT="${GNUPLOTCMDIT}; set title 'iter = ${iter}'; "
    GNUPLOTCMDIT="${GNUPLOTCMDIT}; plot 'edge_per_second_iter_${iter}' u 1:3 t 'Scalar', \
                                       # 'edge_per_second_iter_${iter}' u 1:4 t 'impl', \
                                        'edge_per_second_iter_${iter}' u 1:5 t 'intrin'"#, \
                                       # 'edge_per_second_iter_${iter}' u 1:6 t 'intrin align', \
                                       # 'edge_per_second_iter_${iter}' u 1:7 t 'lga',  \
                                       # 'edge_per_second_iter_${iter}' u 1:8 t 'lgas'"
done


DEGREES=$(awk '{print $1}' < edge_per_second | sort -n | uniq)

for deg in $DEGREES
do
    awk "{if (\$1 == ${deg}){print \$0} }" < edge_per_second > edge_per_second_degree_${deg}

    GNUPLOTCMDDEG="${GNUPLOTCMDDEG}; set title 'degree = ${deg}'; "
    GNUPLOTCMDDEG="${GNUPLOTCMDDEG}; plot 'edge_per_second_degree_${deg}' u 2:3 t 'Scalar', \
                                         # 'edge_per_second_degree_${deg}' u 2:4 t 'impl', \
                                          'edge_per_second_degree_${deg}' u 2:5 t 'Intrinsic'"#, \
                                         # 'edge_per_second_degree_${deg}' u 2:6 t 'intrin align', \
                                         # 'edge_per_second_degree_${deg}' u 2:7 t 'lga', \
                                         # 'edge_per_second_degree_${deg}' u 2:8 t 'lgas'"
done



gnuplot <<EOF

set terminal pdf
set output '$FILENAMEOUT'

set ylabel 'edge per second'
set xlabel 'degree'

set logscale x 2

set key top left

${GNUPLOTCMDIT}

set xlabel 'iter'

${GNUPLOTCMDDEG}

EOF
