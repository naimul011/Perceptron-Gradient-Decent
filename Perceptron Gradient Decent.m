clc ;
clear all;
%x1 %x2 % classes
m=[
1 1 1
1 -1 1
4 5 1
2 2.5 -1
0 2 -1
2 3 -1
];
x1 = m(: ,1);
x2 = m(:, 2);
classes = m(: ,3);
plot (x1( classes == 1) ,
x2( classes == 1) ,'b*');
hold on;
2
plot (x1( classes == -1) ,
x2( classes == -1) ,'r*');
title (' Distribution of
datapoints of
classes (1 , -1) ');
xlabel ('x1 ');
ylabel ('x2 ');
xlim ([ -6 9]);
ylim ([ -4 8]);
grid on;
y = [x1( classes == 1) .^2
x2( classes == 1) .^2
x1( classes ==
1) .* x2( classes == 1)
x1( classes == 1)
x2( classes == 1) [1 1 1]'
;
-x1( classes == -1) .^2
-x2( classes == -1) .^2
-x1( classes ==
-1) .* x2( classes == -1)
-x1( classes == -1)
-x2( classes == -1)
-[1 1 1] '];
w = [0 0 0 0 0 0];
epoch = 2000;
alpha = 0.1;
for i = 1: epoch
w = w +
alpha * sum(y(y*w ' <=0 ,:));
end
syms x1 x2;
s =
sym (w(1 ,1)*x1*x1+w(1 ,2)*x2*x2+w(1 ,3)*x1*x2+w(1 ,4)*
x1+w(1 ,5)*x2+w(1 ,6));
s2= solve (s,x2);
xvals1 =[ -10:0.01:10];