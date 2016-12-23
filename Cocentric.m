x = linspace(-pi, pi, 201);
% If you pass meshgrid only one vector, it uses that vector for both the x
% and the y coordinates.
[xx,yy] = meshgrid(x);
A = 10;
I = sin(A*(xx.^2 + yy.^2));

% Specify the range -1 to 1 when displaying the image.
imshow(I, [-1 1])