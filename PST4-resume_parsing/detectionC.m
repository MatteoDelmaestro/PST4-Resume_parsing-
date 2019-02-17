function [value] = detectionC(image)
[dim, nb_px] = size(image); % pour les ligne on utilise dim et pour les colone nb_px

imgC = sum(image);
value = 0;
tx = zeros(1,nb_px);
tx2 = zeros(1,nb_px);
tx3 = zeros(1,nb_px);
tx4 = zeros(1,nb_px);

%for indexL = 2:nb_px
    %if imgL(indexL) - (imgL(indexL-1))>value
     %   minL = indexL-1;
    %    maxL = indexL;
   %     value = imgL(indexL) - (imgL(indexL-1));
  %      tx(indexL-1)=(imgL(indexL-1)/nb_px);
 %   end
%end

for indexL = 1:nb_px
    
    tx(indexL)=(imgC(indexL)/nb_px);
  
end
%tx= value/nb_px;
tx2 = Med(tx);
tx3 = Med(tx2);
for i = 2:100
    tx3 = Med(tx3);
end
tx4 = Moy(tx2);
for i = 2:5
    tx4 = Moy(tx4);
end


deriv = diff(tx2);

disp(value);
disp(tx);
figure(1)
subplot(2,3,1);
plot(imgC);
subplot(2,3,2);
plot(tx);
subplot(2,3,3);
plot(tx2);
subplot(2,3,4);
plot(tx3);
subplot(2,3,5);
plot(tx4);
subplot(2,3,6);
plot(deriv);





return 
