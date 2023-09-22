clc
clear all

self=78;
x_n=0.45;


randlist = [];
    for i=1:1000
        [r,self]=Random(self,x_n,3,1);
        for j=1:length(randlist)
            if r==randlist(j)
               break
            end
        end
        if r==randlist(j)
            continue
        end            
        randlist=[randlist ,r];
        if length(randlist)==3
            break
        end 
    end 

    writematrix(randlist,'keys/Randomlist.txt');

    fileID=fopen('text.txt','r');
    message=fscanf(fileID,'%c');
    
[message,self]=encryption(randlist(1),self,x_n,message);
[message,self]=encryption(randlist(2),self,x_n,message);
[message,self]=encryption(randlist(3),self,x_n,message);


fileID=fopen('ENCRYPTED.txt','w');
fprintf(fileID,'%c',message);






