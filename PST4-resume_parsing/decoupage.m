img = imread('D:\Bureau\PST4-resume_parsing\cv.png');
imgG = rgb2gray(img);

imgCol = sum(imgG);
imgLin = sum(imgG.');
value = 0;
valueL = 0;



for indexC = 2:720
    if imgCol(indexC) - (imgCol(indexC-1))>value
        minC = indexC-1;
        maxC = indexC;
        value = imgCol(indexC) - (imgCol(indexC-1));
    end
end

for indexL = 2:1040
    if imgLin(indexL) - (imgLin(indexL-1))>valueL
        minL = indexL-1;
        maxL = indexL;
        valueL = imgLin(indexL) - (imgLin(indexL-1));
    end
end

SL= maxL-1;
SC= maxC-1;

test = imgG((maxL:1024),(maxC:720));
test2 = imgG((1:maxL),(1:maxC));
test3 = imgG((maxL:1024),(1:maxC));
test4 = imgG((1:maxL),(maxC:720));


image(imgG);
subplot(2,2,1);
imshow(test2);
subplot(2,2,2);
imshow(test4);
subplot(2,2,3);
imshow(test3);
subplot(2,2,4);
imshow(test);
% grosse difference de rendu entre un imshow et un image attention
