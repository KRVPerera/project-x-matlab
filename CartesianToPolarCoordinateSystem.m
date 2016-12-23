%% Load a image
imageName = 'b0.png';
I = imread(imageName);
% imshow(I);
%% Getting the dimentions of the image
[width height channels] = size(I);

%% Change the image to gray scale
if channels > 2
    bw = rgb2gray(I);
else
    bw = I;
end
figure;imshow(bw);
%% New Sizes gray scale sizes
[bw_width bw_height] = size(bw);

%% Create a new blank image
image2 = zeros(bw_width,bw_height);
for i = 1 : bw_width
    for j = 1 : bw_height
        [theta rho] = cart2pol(i,j);
        x = (abs(floor(theta))+1)*100;
        y = (abs(floor(rho))+1)*100;
        % Clipping
        if x > bw_width-1
            x = (bw_width - 1);
        end
        if y > bw_height - 1
            y = bw_height - 1;
        end
        image2(x, y) = bw(i, j);
    end
end

figure;imshow(image2);
%%
%  image=zeros(300,400,3); %initialize
%  image(:,1:100,1)=0.5;   %Red (dark red)
%  image(:,101:200,1)=1;   %Red (maximum value)
%  image(1:100,:,2)=rand(100,400);  %Green
% figure, imshow(image);
