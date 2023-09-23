function [string,self]=vignereEncryption(self,x_n,message)

[keyListSize,self]=Random(self,x_n,length(message),3);
keylist=[];
for i=1:keyListSize
    [keylist(i),self]=Random(self,x_n,127,33);
end 

plain=double(message);

for j=1:(length(message)-length(keylist))
    keylist=[keylist,keylist(j)];
end 

 writematrix(keylist,'../keys/vignerekeylist.txt');

 prob=[];
 encryptedList=[];

 for k=1:length(message)
     y=mod(plain(k)+keylist(k),127);
     if y<33
         y=y+33;
         prob=[prob k];
     end
     encryptedList(k)=y;
 end 
    writematrix(prob,'../keys/vignereprob.txt');

 string=char(encryptedList);
 self=self;

end 
