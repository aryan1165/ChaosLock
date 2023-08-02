function [string,self] = ShiftEncryption(self,x_n,message)
    [x,self]=Random(self,x_n,0,1000);
    fileID=fopen('keys/shiftcipherKEY.txt','w');
    fprintf(fileID,'%d',x);
    fclose(fileID);

    prob=[];
    ciphered=[];

    plain=double(message);

    for i=1:length(plain)
        ciphered(i)=mod(plain(i)+x,127);
        if ciphered(i)<33
            ciphered(i)=ciphered(i)+33;
            prob=[prob, i];
        end
    end
    
    
    writematrix(prob,'keys/shiftcipherprob.txt')

    string=char(ciphered);
    self=self;
end