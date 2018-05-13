function [ g ] = centre( objets )
k=size(objets);
g=zeros(1,2);

for i= 1:k(1,1)
g(1,1)=g(1,1) + objets (i,1);
g(1,2)=g(1,2) + objets (i,2);
end
   g(1,1)=g(1,1)/k(1,1);
   g(1,2)=g(1,2)/k(1,1);
%    disp(size(g));
end

