%% Load a image
%I0_n = 'arith.png';
%I1_n = 'arith.png';
%I0 = imread(I0_n);
%I1 = imread(I1_n);
clc;
I0 = A;
I1 = B;
% imshow(I);
%% Getting the dimentions of the image
[width0 heigh0 channels0] = size(I0);
[width1 heigh1 channels1] = size(I1);

%% Create a new blank image

for i = 1 : width0
    for j = 1 : heigh0
        for x = 1 : width1
          for y = 1 : heigh1
             if(I0(i,j,1) == I1(x,y,1))
                 if(I1(x,y,1) == 19)
                 fprintf('i,j : %d,%d x,y %d,%d, value = %d\n',i,j,x,y, I1(x,y,1));
                 end
             end
          end
        end
    end
end