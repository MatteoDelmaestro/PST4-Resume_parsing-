function [tx2] = Med(tx)
[dim, taille] = size(tx);

tx2 = zeros(1,taille);

for index = 1:2
   
  
        
       A = [ tx(index) tx(index+1) tx(index+2)];
        tx2(index) = median(A);
       

end
   
   
   
   for index = 3:taille-2
        A = [tx(index-2) tx(index-1) tx(index) tx(index+1) tx(index+2)];
        tx2(index) = median(A);
     
   end
   
   
   for index = taille-1:taille
       
       A = [tx(index-2) tx(index-1) tx(index)];
        tx2(index) = median(A);
     
       
   end
    





return 
