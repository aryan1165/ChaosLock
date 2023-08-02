function string= vignereDecryption(message)

keylist=readmatrix('keys/vignerekeylist.txt');

prob=readmatrix('keys/vignereprob.txt');

y=double(message);
plain=[];
for i=1:length(keylist)
    for j=1:length(prob)
        if i==prob(j)
            y(i)=y(i)-33;
        end
    end
    plain(i)=mod(y(i)-keylist(i),127);
end

string=char(plain);

end