rgbImage = imread('https://tshaonline.org/sites/default/files/images/handbook/UU/ut_tower.jpg');
%imshow(rgbImage);
I = rgb2gray(rgbImage);
figure;
%imshow(I);
drawnow;

[U, S, V] = svd(double(I));

[m, n] = size(U);
[a, b] = size(S);
[x, y] = size(V);
%S_approx40 = S;
%S_approx40([41:end]) = 0; 
%I_approx40 = U*S_approx40*V'; 
%imshow(mat2gray(I_approx40))

%S_approx140 = S;
%S_approx140(80:end, :) = 0;
%I_approx140 = U*S_approx140*V';
%imshow(mat2gray(I_approx140))

%S_approx240 = S;
%S_approx240(241:end, :) = 0;
%I_approx240 = U*S_approx240*V';
%imshow(mat2gray(I_approx240))

%S_approx340 = S;
%S_approx340(341:end, :) = 0;
%I_approx340 = U*S_approx340*V';
%imshow(mat2gray(I_approx340))

S_approx440 = S;
S_approx440(441:end, :) = 0; 
I_approx440 = U*S_approx440*V';
imshow(mat2gray(I_approx440))

%S_approx840 = S;
%S_approx840(841:end, :) = 0;
%I_approx840 = U*S_approx840*V';
%imshow(mat2gray(I_approx840))