%imageName = 'g0.jpg';
%I=imread(imageName);   %read image
%I1=flipud(I);
%I1=fspecial('gaussian',256,32,3); % generate fake image
I1=zeros(15,15,3);
val = 0;
for i=1:15
    for j=1:15
       I1(i,j,:) = val; 
       val = val + 1;
    end
end

%%
A=I1;
A1=double(A(:,:,1));
A2=double(A(:,:,2));
A3=double(A(:,:,3));  %rgb3 channel to double
%%
[m n]=size(A1);
[t r]=meshgrid(linspace(-pi,pi,n),1:m); %Original coordinate

M=2*m;
N=2*n;
[NN MM]=meshgrid((1:N)-n-0.5,(1:M)-m-0.5);
T=atan2(NN,MM);
R=sqrt(MM.^2+NN.^2);                  

B1=interp2(t,r,A1,T,R,'linear',0);
B2=interp2(t,r,A2,T,R,'linear',0);
B3=interp2(t,r,A3,T,R,'linear',0); %rgb3 channel Interpolation
B=uint8(cat(3,B1,B2,B3));
%%
subplot(211),imshow(A);  %draw the Original Picture
subplot(212),imshow(B);  %draw the result