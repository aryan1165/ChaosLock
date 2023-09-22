function [string,self] = substitutuionencryption(self,x_n,message)
    list1 = uint32(32):uint32(126);
    list2 = [];
    for i=1:10000000
        [r,self]=Random(self,x_n,126,32);
        for j=1:length(list2)
            if r==list2(j)
               break
            end
        end
        if r==list2(j)
            continue
        end            
        list2=[list2 ,r];
        if length(list2)==length(list1)
            break
        end 
    end 
    
    writematrix(list1,'keys/subsitutionlist1.txt');
    writematrix(list2,'keys/subsitutionlist2.txt');

    plain=double(message);
    
    indexinlist1=[];

    for k=1:length(plain)
        for l=1:length(list1)
            if plain(k)==list1(l)
                indexinlist1=[indexinlist1,l];
                break
            end
        end
    end 

    cipherindex=[];

    for m=1:length(plain)
        cipherindex(m)=list2(indexinlist1(m));
    end 

    string=char(cipherindex);
    self=self;
end