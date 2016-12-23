[xx,yy] = meshgrid(-125:125);
[theta,R] = cart2pol(xx,yy);
I = sin(50*theta);
imshow(I, [-1 1])