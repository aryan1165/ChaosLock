function string = subsitutionDecryption(message)
    
   list1= readmatrix('keys/subsitutionlist1.txt');
   list2= readmatrix('keys/subsitutionlist2.txt');

   ciphered=double(message);
    index=[];
   for i=1:length(ciphered)
       for j=1:length(list2)
           if ciphered(i)==list2(j)
                index=[index,j];
                break
           end
       end
   end 
    plain=[];
   for k=1:length(ciphered)
        plain(k)=list1(index(k));
   end

   string=char(plain);

end