a= 5.23e-3
b= 4+5i
c= sind(30)
d= log10(3)
p= c^2 + d^a
q= (b^2 + 3*d + (a*d))/(a*c)
r= 20*a - d - exp(3)

A= [2 -3 1; 3.8 5 5; 2 -2 0]
B= [1 -2 -0.9; 2 3e-8 5]
f= [1; 4; 5]
g= [(20 + i) (-8 -i)]
P= (A^(1/3))*f + 5
Q= g*B*f
R= B*A^4

N= [1 2 -0.2; 0 -3 6; 1 1 -9]
M= [5; 3; 1]
X= inv(N)*M
x_1= X(1)
x_2= X(2)
x_3= X(3)

xa= linspace(0, 6)
ya= 10*xa + 3
figure;
plot(xa, ya)
xlabel('x')
ylabel('y')
title('graph xa')

xb= linspace(0, 2*pi)
yb= sin(xb) + 1.5*cos(xb+(pi/3))
figure;
plot(xb, yb)
xlabel('x')
ylabel('y')
title('graph xb')
