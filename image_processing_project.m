ai = imread('a5.jpg');
mi=imread('mango_infected.png');
m4=imread('m4.PNG');

img = imread('potato.png');
type = 'a'; 
[L, Centers] = imsegkmeans(img, 3);
B = labeloverlay(img,L);
rgbImage = B;
subplot(4, 5, 1);
imshow(rgbImage);
title('Original Image(Potato)');
redBand = rgbImage(:,:, 1);
greenBand = rgbImage(:,:, 2);
blueBand = rgbImage(:,:, 3);
redthreshold = 100;
greenThreshold = 140;
blueThreshold = 170;
redMask = (redBand < redthreshold);
greenMask = (greenBand > greenThreshold);
blueMask = (blueBand < blueThreshold);
damagedAreasMask = uint8(redMask & greenMask & blueMask);
subplot(4, 5, 2);
imshow(damagedAreasMask, []);
title('Damaged Areas Mask');
maskedrgbImage = uint8(zeros(size(damagedAreasMask))); % Initialize
maskedrgbImage(:,:,1) = rgbImage(:,:,1) .* damagedAreasMask;
maskedrgbImage(:,:,2) = rgbImage(:,:,2) .* damagedAreasMask;
maskedrgbImage(:,:,3) = rgbImage(:,:,3) .* damagedAreasMask;
reqInfo = maskedrgbImage(:, :, 1) > 0 & maskedrgbImage(:, :, 2) > 0 & maskedrgbImage(:, :, 3) > 0;
res = sum(reqInfo(:));
disp(res)
t = 10000;
if type=='b'
    t = 5000;
end
if res>t
    subplot(4, 5, 3);
    imshow(maskedrgbImage);
    title('Result: Infected');
else
    subplot(4, 5, 3);
    imshow(maskedrgbImage);
    title('Result: Good');
end  

%=================================================================================%

img = imread('good_potato.jpg');
[L, Centers] = imsegkmeans(img, 3);
B = labeloverlay(img,L);
rgbImage = B;
subplot(4, 5, 4);
imshow(rgbImage);
title('Original Image(Potato)');
redBand = rgbImage(:,:, 1);
greenBand = rgbImage(:,:, 2);
blueBand = rgbImage(:,:, 3);
redthreshold = 100;
greenThreshold = 140;
blueThreshold = 170;
redMask = (redBand < redthreshold);
greenMask = (greenBand > greenThreshold);
blueMask = (blueBand < blueThreshold);
damagedAreasMask = uint8(redMask & greenMask & blueMask);
maskedrgbImage = uint8(zeros(size(damagedAreasMask))); % Initialize
maskedrgbImage(:,:,1) = rgbImage(:,:,1) .* damagedAreasMask;
maskedrgbImage(:,:,2) = rgbImage(:,:,2) .* damagedAreasMask;
maskedrgbImage(:,:,3) = rgbImage(:,:,3) .* damagedAreasMask;
reqInfo = maskedrgbImage(:, :, 1) > 0 & maskedrgbImage(:, :, 2) > 0 & maskedrgbImage(:, :, 3) > 0;
res = sum(reqInfo(:));
disp(res)
t = 10000;
if type=='b'
    t = 5000;
end
if res>t
    subplot(4, 5, 5);
    imshow(maskedrgbImage);
    title('Result: Infected');
else
    subplot(4, 5, 5);
    imshow(maskedrgbImage);
    title('Result: Good');
end  

%===============================================================================%
img = imread('banana.png');
type = 'b'; 

[L, Centers] = imsegkmeans(img, 3);
B = labeloverlay(img,L);
rgbImage = B;
subplot(4, 5, 6);
imshow(rgbImage);
title('Original Image(Banana)');
redBand = rgbImage(:,:, 1);
greenBand = rgbImage(:,:, 2);
blueBand = rgbImage(:,:, 3);
redthreshold = 100;
greenThreshold = 140;
blueThreshold = 170;
redMask = (redBand < redthreshold);
greenMask = (greenBand > greenThreshold);
blueMask = (blueBand < blueThreshold);
damagedAreasMask = uint8(redMask & greenMask & blueMask);
subplot(4, 5, 7);
imshow(damagedAreasMask, []);
title('Damaged Areas Mask');
maskedrgbImage = uint8(zeros(size(damagedAreasMask)));
maskedrgbImage(:,:,1) = rgbImage(:,:,1) .* damagedAreasMask;
maskedrgbImage(:,:,2) = rgbImage(:,:,2) .* damagedAreasMask;
maskedrgbImage(:,:,3) = rgbImage(:,:,3) .* damagedAreasMask;
reqInfo = maskedrgbImage(:, :, 1) > 0 & maskedrgbImage(:, :, 2) > 0 & maskedrgbImage(:, :, 3) > 0;
res = sum(reqInfo(:));
disp(res)
t = 10000;
if type=='b'
    t = 5000;
end
if res>t
    subplot(4, 5, 8);
    imshow(maskedrgbImage);
    title('Result: Infected');
else
    subplot(4, 5, 8);
    imshow(maskedrgbImage);
    title('Result: Good');
end  

%=================================================================================%

img = imread('b2.jpg');
[L, Centers] = imsegkmeans(img, 3);
B = labeloverlay(img,L);
rgbImage = B;
subplot(4, 5, 9);
imshow(rgbImage);
title('Original Image(Banana)');
redBand = rgbImage(:,:, 1);
greenBand = rgbImage(:,:, 2);
blueBand = rgbImage(:,:, 3);
redthreshold = 100;
greenThreshold = 140;
blueThreshold = 170;
redMask = (redBand < redthreshold);
greenMask = (greenBand > greenThreshold);
blueMask = (blueBand < blueThreshold);
damagedAreasMask = uint8(redMask & greenMask & blueMask);
maskedrgbImage = uint8(zeros(size(damagedAreasMask))); % Initialize
maskedrgbImage(:,:,1) = rgbImage(:,:,1) .* damagedAreasMask;
maskedrgbImage(:,:,2) = rgbImage(:,:,2) .* damagedAreasMask;
maskedrgbImage(:,:,3) = rgbImage(:,:,3) .* damagedAreasMask;
reqInfo = maskedrgbImage(:, :, 1) > 0 & maskedrgbImage(:, :, 2) > 0 & maskedrgbImage(:, :, 3) > 0;
res = sum(reqInfo(:));
disp(res)
t = 10000;
if type=='b'
    t = 5000;
end
if res>t
    subplot(4, 5, 10);
    imshow(maskedrgbImage);
    title('Result: Infected');
else
    subplot(4, 5, 10);
    imshow(maskedrgbImage);
    title('Result: Good');
end  

%=================================================================================%

subplot(4,5,12);
imshow(ai); 
title('Internal Image(Apple)')
%%=================================================================================================
n=imhist(ai); 
N=sum(n); 
max=0; 
%%================================================================================================
for i=1:256
    P(i)=n(i)/N; 
end
%%================================================================================================
for T=2:255     
    w0=sum(P(1:T)); 
    w1=sum(P(T+1:256)); 
    u0=dot([0:T-1],P(1:T))/w0; 
    u1=dot([T:255],P(T+1:256))/w1; 
    sigma=w0*w1*((u1-u0)^2); 
    if sigma>max  
        max=sigma; 
        threshold=T-1; 
    end
end
%%====================================================================================================
bw=im2bw(ai,threshold/255); 
subplot(4,5,13);
imshow(bw);
title("Otsu threshold");
imgc = uint8(imcomplement(bw));

finalImage = uint8(zeros(size(ai)));
finalImage(:,:,1) = ai(:,:,1) .* imgc;
finalImage(:,:,2) = ai(:,:,2) .* imgc;
finalImage(:,:,3) = ai(:,:,3) .* imgc;
reqInfo = finalImage(:, :, 1) > 0 & finalImage(:, :, 2) > 0 & finalImage(:, :, 3) > 0;
res = sum(reqInfo(:));
disp(res)
t = 10000;
subplot(4,5,14); 
if res>t
    imshow(finalImage);
    title('Result: Infected');
else
    imshow(finalImage);
    title('Result: Good');
end 

%==========================================================================%
subplot(4,5,16);
imshow(mi);
title('infected mango(Spongy tissue)');
subplot(4,5,17);
imshow(m4);
title('x-ray image');
m4=rgb2gray(m4);
x=(m4>150);
subplot(4,5,18);
imshow(x);
title('segmented defected region');
mi2 = imread('m3.png');
subplot(4,5,19);
imshow(mi2);
title('good mango');
m4=rgb2gray(mi2);
x=(m4>150);
subplot(4,5,20);
imshow(x);
title('non-infected mango');