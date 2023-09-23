function string=ShiftDecryption(message)
    
    fileID=fopen('../keys/shiftcipherKEY.txt','r');
    k=fscanf(fileID,'%d');
  
    prob=readmatrix('../keys/shiftcipherprob.txt');

    y=double(message);
    decrypted=[];
    for i=1:length(y)
        for j=1:length(prob)
            if i==prob(j)
                y(i)=y(i)-33;

            end
        end

        decrypted(i)=mod(y(i)-k,127);
    end

    string=char(decrypted);