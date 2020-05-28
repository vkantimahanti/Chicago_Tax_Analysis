proc fastclus data=census1.psam_h17_subset1
radius=0 replace=full
converge=0 maxiter=200
maxclusters=20
OUTSTAT=census1.psam_h17_subset1_20clusters_stat
OUT=census1.psam_h17_subset1_20clusters
distance;
id SERIALNO;
var VALP HINCP;
run;
proc sgplot;
scatter y=HINCP x=VALP / group=cluster;
title ’ACS PUMS 2013 1 YR 20-Cluster Analysis’;
title2 ’of Data Containing Property Value and Household Income’;
run;