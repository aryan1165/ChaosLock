
function [x,self]=Random(self,x_n,Upper_bound,Lower_bound)
    r = 4.1; 
    for i = 1:self
        x_n = mod(r * x_n * (1 - x_n),10000000);
    end
    x_n = mod(r * x_n * (1 - x_n),100);
    x = round(mod(x_n,(Upper_bound - Lower_bound))+ Lower_bound);
    self=self+1;
end 

