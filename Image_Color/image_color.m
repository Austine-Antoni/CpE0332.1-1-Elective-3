f=imread('orange.png'); %load image
imshow(f);
size(f); %displays image dimensions
imwrite(f,'orange.jpg'); %reduces size byte; resizable format
figure;
imshow(f);
whos f;
whos g; %smaller bytes
imfinfo('orange.jpg');

%Assigning new color
img_red=f;
img_red(:,:,2)=0; %rgb; green is set to 0
img_red(:,:,3)=0; %blue is set to 0
figure(1); 
imshow(img_red); %red becomes dominant

img_green=f;
img_green(:,:,1)=0; %set red to 0
img_green(:,:,3)=0; %set blue to 0
figure(2); 
imshow(img_green); %green becomes dominant

img_blue=f;
img_blue(:,:,1)=0; %set red to 0
img_blue(:,:,2)=0; %set green to 0
figure(3); 
imshow(img_blue); %blue becomes dominant

g = rgb2gray(f); %convert to grayscale
size(f);
figure(4);
imshow(g);


imwrite(img_red,'img_red.png'); %saves recolored image
imwrite(img_green,'img_green.png'); %saves recolored image
imwrite(img_blue,'img_blue.png'); %saves recolored image
imwrite(g,'gray.png'); %saves recolored image

whos img_red;
whos img_green;
whos img_blue;
whos g;