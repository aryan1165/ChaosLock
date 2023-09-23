
randomlist=readmatrix('../keys/Randomlist.txt');

fileID=fopen('../ENCRYPTED.txt','r');
    message=fscanf(fileID,'%c');

    
message=decryption(randomlist(3),message);
message=decryption(randomlist(2),message);
message=decryption(randomlist(1),message);

fileID=fopen('../DECRYPTED.txt','w');
fprintf(fileID,'%c',message);