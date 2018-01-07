function [x0,niter] = dichotomie(a,b,epsilon )
a0=a;
b0=b;
x0=(a0+b0)/2;
%disp(x0);
d=abs(a0-b0);
niter=1;
    while d>epsilon && not(f(x0)==0) 
         tmp=f(a0)*f(x0);
         if tmp<0
           b0 =x0;
         else
           a0 =x0;
         end
         x0=(a0+b0)/2;
         d=abs(a0-b0); 
         niter=niter+1;
    end
end

