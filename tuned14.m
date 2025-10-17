function mpc = nmwc14
% NMWC14  
% Data for the modified version of the IEEE 14-bus system proposed in
%
% M. R. Narimani, D. K. Molzahn, D. Wu, and M. L. Crow, "Empirical 
% Investigation of Non-Convexities in Optimal Power Flow Problems," 
% American Control Conference, Milwaukee, WI, USA, June 2018.
%
% This test system is constructed by modifying the IEEE 14-bus test case 
% via reducing the loading, slightly tightening the voltage limits, and 
% significantly tightening the lower reactive power generation limits. The 
% goal of these modifications is to obtain a test case with operational 
% conditions where lower limits on voltage magnitudes and reactive power 
% generation are binding. As discussed in the reference above, these
% operational conditions appear associated with non-convex feasible spaces
% that challenge a variety of solution algorithms. See the reference above
% for the specific modifications to the IEEE 14-bus test case.
%
% Detailed data regarding various local solutions are provided at the end 
% of this file. 
%
% Mohammad Rasoul Narimani, ECE Department, Missouri University of Science 
% and Technology, mn9t5@mst.edu
%
% Daniel K. Molzahn, Energy Systems Division, Argonne National Laboratory, 
% dan.molzahn@gmail.com
%
% Dan Wu, Mechanical Engineering Department, Massachusetts Institute of 
% Technology, danwumit@mit.edu
%
% Mariesa L. Crow, ECE Department, Missouri University of Science 
% and Technology, crow@mst.edu
% 
% March 15, 2018


%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 100;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
1	3	0.00	0.00	0	0	1	0.967979	 0.000000	0	1	1.049400	0.949400
2	2	8.68	5.08	0   0	1	0.984953	-4.980000	0	1	1.049400	0.949400
3	2	37.68	7.60	0	0	1	1.001487	-12.720000	0	1	1.049400	0.949400
4	1	19.12	-1.56	0	0	1	0.976264	-10.330000	0	1	1.049400	0.949400
5	1	3.04	0.64	0	0	1	1.040291	-8.780000	0	1	1.049400	0.949400
6	2	4.48	3.00	0	0	1	1.051849	-14.220000	0	1	1.049400	0.949400
7	1	0.00	0.00	0	0	1	1.059539	-13.370000	0	1	1.049400	0.949400
8	2	0.00	0.00	0	0	1	0.941772	-13.360000	0	1	1.049400	0.949400
9	1	11.80	6.64	0	19	1	0.999760	-14.940000	0	1	1.049400	0.949400
10	1	3.60	2.32	0	0	1	1.026397	-15.100000	0	1	1.049400	0.949400
11	1	1.40	0.72	0	0	1	0.962986	-14.790000	0	1	1.049400	0.949400
12	1	2.44	0.64	0	0	1	0.940379	-15.070000	0	1	1.049400	0.949400
13	1	5.40	2.32	0	0	1	0.958254	-15.160000	0	1	1.049400	0.949400
14	1	5.96	2.00	0	0	1	1.027853	-16.040000	0	1	1.049400	0.949400


];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
1	305.18	5.20	10.00	0.00	0.97	100.00	1.00	332.40	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
2	128.54	25.02	50.00	-2.00	0.98	100.00	1.00	140.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
3	91.81	20.79	40.00	0.00	1.00	100.00	1.00	100.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
6	91.81	12.33	24.00	-0.30	1.05	100.00	1.00	100.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
8	91.81	12.33	24.00	-0.30	0.94	100.00	1.00	100.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
1	2	0.0194	0.0592	0.0528	0	0	0	0	0	1	-360	360;
1	5	0.0540	0.2230	0.0492	0	0	0	0	0	1	-360	360;
2	3	0.0470	0.1980	0.0438	0	0	0	0	0	1	-360	360;
2	4	0.0581	0.1763	0.0340	0	0	0	0	0	1	-360	360;
2	5	0.0570	0.1739	0.0346	0	0	0	0	0	1	-360	360;
3	4	0.0670	0.1710	0.0128	0	0	0	0	0	1	-360	360;
4	5	0.0134	0.0421	0.0000	0	0	0	0	0	1	-360	360;
4	7	0.0000	0.2091	0.0000	0	0	0	0.978	0	1	-360	360;
4	9	0.0000	0.5562	0.0000	0	0	0	0.969	0	1	-360	360;
5	6	0.0000	0.2520	0.0000	0	0	0	0.932	0	1	-360	360;
6	11	0.0950	0.1989	0.0000	0	0	0	0	0	1	-360	360;
6	12	0.1229	0.2558	0.0000	0	0	0	0	0	1	-360	360;
6	13	0.0662	0.1303	0.0000	0	0	0	0	0	1	-360	360;
7	8	0.0000	0.1762	0.0000	0	0	0	0	0	1	-360	360;
7	9	0.0000	0.1100	0.0000	0	0	0	0	0	1	-360	360;
9	10	0.0318	0.0845	0.0000	0	0	0	0	0	1	-360	360;
9	14	0.1271	0.2704	0.0000	0	0	0	0	0	1	-360	360;
10	11	0.0821	0.1921	0.0000	0	0	0	0	0	1	-360	360;
12	13	0.2209	0.1999	0.0000	0	0	0	0	0	1	-360	360;
13	14	0.1709	0.3480	0.0000	0	0	0	0	0	1	-360	360

];

%%-----  OPF Data  -----%%
%% generator cost data
%	1	startup	shutdown	n	x1	y1	...	xn	yn
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	0	0	3	0.043	20	0;
	2	0	0	3	0.25	20	0;
	2	0	0	3	0.01	40	0;
	2	0	0	3	0.01	40	0;
	2	0	0	3	0.01	40	0;
];



%%%%%%%%%%%%%%%%%%%%%%%%% First local solution %%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The first local solution has an objective value of 2529.65 $/hr.
% This solution is globally optimal since it has the same objective value
% as the best known lower bound.
%
% V_magnitude = [0.9953; 0.9829; 0.9629; 0.9746; 0.9751; 1.0247; 1.0108; 1.0103; 1.0188; 1.0168; 1.0192; 1.0186; 1.0166; 1.0105];
% V_angle = [0; -2.0553; -5.3584; -4.4674; -3.7904; -6.1585; -5.7926; -5.7926; -6.4745; -6.5415; -6.4076; -6.5282; -6.5632; -6.9375]; % degrees
%
% Pg1 = 89.4503; % MW
% Pg2 = 16.4480; % MW
% Pg3 = 0; % MW
% Pg6 = 0; % MW
% Pg7 = 0; % MW
%
% Qg1 = 0; % MVAr
% Qg2 = -2; % MVAr
% Qg3 = 0; % MVAr
% Qg6 = -0.3; % MVAr 
% Qg8 = -0.3; % MVAr


%%%%%%%%%%%%%%%%%%%%%%%%% Second local solution %%%%%%%%%%%%%%%%%%%%%%%%%%%
% The second local solution has an objective value equal to 3024.19 $/hr.
%
% V_magnitude = [0.9785; 0.9674; 0.9494; 0.9645; 0.9636; 1.008; 0.9979; 0.9954; 1.0073; 1.0046; 1.0054; 1.0026; 1.0013; 0.9973];
% V_angle = [0; -1.7730; -4.4961; -2.9890; -2.5923; -4.0689; -1.6481; 1.9139; -3.1540; -3.4403; -3.8039; -4.3597; -4.3091; -4.0917]; % degrees
%
% Pg1 = 70.0060; % MW
% Pg2 = 0; % MW
% Pg3 = 0; % MW
% Pg6 = 0; % MW
% Pg7 = 35.0267; % MW
%
% Qg1 = 0; % MVAr
% Qg2 = -2; % MVAr
% Qg3 = 0; % MVAr
% Qg6 = -0.3; % MVAr
% Qg8 = -0.3; % MVAr

%%%%%%%%%%%%%%%%%%%%%%%%% Objective value bound %%%%%%%%%%%%%%%%%%%%%%%%%%%
% The best known lower bound on the optimal objective value is 2529.65 $/hr.


