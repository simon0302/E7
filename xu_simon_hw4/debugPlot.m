function z = debugPlot(nx)

dx = 0.1*pi;

x = linspace(0, nx*dx, nx);
y = linspace(0, nx*dx, nx);

[X,Y] = meshgrid(x,y);

entry1 = [1,0];
entry2 = [0,1];
entry3 = [0,20];
entry4 = [1,1];

wave1 = sin(X*entry1(1) + Y*entry1(2));
wave2 = cos(X*entry2(1) + Y*entry2(2));
wave3 = sin(X*entry3(1) + Y*entry3(2));
wave4 = sin(X*entry4(1) + Y*entry4(2));

z = wave1+wave2+wave3+wave4;

surfc(z)

title('Some Waves')
xlabel('x');
ylabel('y');
zlabel('amplitude')