if g(0)*g(2)<0
disp('L intervale peut etre choisie ');
end
%dichotomie
x0 =dichotomie(0,2,0.001);
sprintf('La racine x0 = %f',x0)

%Le nombre des iterations
[x0 , n] =dichotomie(0,2,0.001);
sprintf('Le nombre des iterations = %d',n)