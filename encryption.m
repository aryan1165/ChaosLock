function [message,self] = encryption(index,self,x_n,message)
    
    switch index
        case 1
            [message,self]=ShiftEncryption(self,x_n,message)
            return
            
        case 2
            [message,self]=vignereEncryption(self,x_n,message)
            return
            
        case 3
            [message,self]=substitutuionencryption(self,x_n,message)
            return
    end 
end