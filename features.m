img=imread('C:\Users\DSP_19\Desktop\StreetScore\Pics_1\1 - Copy.jpg');
figure;
imshow(img);
[featureVector, hogVisualization] = extractHOGFeatures(img);
figure;
imshow(img); 
hold on;
plot(hogVisualization);
