a=3;
b=4;
e=0.001;
if(f(a)*f(b)>0)
   sprintf('Impossible de trouver la racine');
else
[res1,res2]=dichotomie(a,b,e);
sprintf('x0=%f , nombre des iterations =%d',res1,res2)
end