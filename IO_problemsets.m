clear 
clc 

q = 0:0.1:10

tc = 0.5+2*q+0.5*q.^2

ac = (1/2)./q + 2+ (1/2)*q

ac_v = tc./q

mc = 2 + q


plot(q,mc)
hold on
plot(q,ac)
legend("Marginal Cost" , "Average Cost")
ylim([0 5])
xlim([0 5])
xlabel("cost")
ylabel("production")
hold off
close 
%%
clear 
clc

q2 = 0:10
ac2 = 2*q2+72./q2
mc2 = 4*q2

plot(q2,ac2)
hold on
plot(q2,mc2)
legend("Marginal Cost" , "Average Cost")
xlabel("cost")
ylabel("production")
hold off

%%
q=1:100
p1a = 2000 - 2*q
p1b = 1500 - 1.5*q
plot(q,p1a)
hold on
plot(q,p1b)
close

%%
% cournot
q_c_1= 0:20:200
q_c_2= 0:20:200

q_r_2 = 90 - q_c_1/2
q_r_1 = 90 - q_c_2/2

plot(q_r_1,q_c_2, 'LineWidth',3)
hold on
plot(q_c_1,q_r_2, 'LineWidth',3)
legend("R^1(q_2)", "R^2(q_1)")
xlabel("q_1")
ylabel("q_2")
xlim([0 190])
ylim([0 190])
hold off

lambda = 0.0:0.1:1

q_i = 45 + (90*lambda)/2
pi_i = (200-q_i -(90-q_i)).*q_i -q_i*20

mr_i = 110-90*lambda
mc_i = zeros(1,11)+20

plot(lambda,mr_i, 'LineWidth',3)
hold on
plot(lambda,mc_i, 'LineWidth',3)
legend("Marginal Revenue= 110-90\lambda", "Marginal Cost= 20")
ylim([0 110])
xlim([0.1 0.9])
xlabel("\lambda \in (0,1)")
hold off
plot(lambda,pi_i)


%%
m= 100
m_vector =repelem(m,10)
Q = 10:10:100
P = m -Q
plot(Q,P)

c = 25
c_vector = repelem(c,10)

Q_cou = (2/3)*(m-c)
Q_cou_vec = repelem(Q_cou,10)

Q_sta = (3/4)*(m-c)
Q_sta_vec = repelem(Q_sta,10)

P_cou = (m+2*c)/3
P_cou_vec = repelem(P_cou,10)

P_sta = (m+3*c)/4
P_sta_vec = repelem(P_sta,10)


plot(Q,c_vector)
hold on
plot(Q,P_cou_vec)
hold on 
plot(Q,P_sta_vec)
hold on
plot(Q_sta_vec,P)
hold on 
plot(Q_cou_vec,P)
hold on
area(P, Q)
hold off

t = tiledlayout(1,2,'TileSpacing','Compact');
% Stackelberg
% Tile 1
nexttile
area(P, Q, FaceColor=[0.8 0.8 0.8])
hold on
area(Q,P_sta_vec, FaceColor=[0.8 0.8 0.8])
hold on
area(Q,c_vector, FaceColor=[0.85 0.85 0.85])
hold on
plot(Q_sta_vec,P)
plot(P, Q)
xlim([10 100])
title("Stackelberg")
hold off

% Cournot
% Tile 2
nexttile
area(P, Q, FaceColor=[0.8 0.8 0.8])
hold on
area(Q,P_cou_vec, FaceColor=[0.8 0.8 0.8])
hold on
area(Q,c_vector, FaceColor=[0.85 0.85 0.85])
hold on 
plot(Q_cou_vec,P)
plot(P, Q)
xlim([10 100])
title("Cournot")
hold off
close


area(P, Q)
hold on
area(Q,c_vector)
hold on
plot(Q,P_cou_vec)
hold on 
plot(Q_cou_vec,P)
hold on 
plot(Q,P_sta_vec)
hold on
plot(Q_sta_vec,P)

title("Cournot vs Stackelberg")
hold off


%% Problem set 4
% question 1
clc
clear
alpha_1 = 0:1:20
alpha_2 = -2:1:13
BRalpha_1 = 2 +(3/2)*alpha_2
BRalpha_2 = 1 + (1/2)*alpha_1

plot(alpha_1 , BRalpha_2, 'LineWidth',3 )
hold on
plot(BRalpha_1, alpha_2 , 'LineWidth',3)
xlabel("\alpha_1")
ylabel("\alpha_2")
xlim([0 20])
ylim([0 15])
legend("R_2(\alpha_1)", "R_1(\alpha_2)")
hold off


%% Problem set 6
clc
clear
q = 0:1:20
AC = 100./q + q
p = 60 - 4*q

plot(q,AC, 'LineWidth',3)
hold on
plot(q,p, 'LineWidth',3)
xlabel("Q")
ylabel("P")
legend("AC=100/q+q" , "p=60-4*q")
ylim([0 120])


%% Problem set 7
clc
 clear
 k =0:1000:20000
 ctype1 = 0.05*k
 ctype2 = 300 +0.02*k
 
plot(k,ctype1,'LineWidth',3)
hold on
plot(k,ctype2,'LineWidth',3)
ylabel("Cost photocopying expenses")
xlabel("Number of photocopies")
xlim([0 20000])
legend("TC(k)=0.05k", "TC(k)=300+0.02k", 'Location','northwest')


%% 
clear
clc
a = 1:10
c = 11:20
w= (a+c)/2
p= (a+w)/2
plot(p,w)

plot(p)
hold on
plot(w)
