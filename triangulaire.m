clear;
%A=[4,15,3,-17;0,13,5,-4;0,0,-2,5;0,0,0,7];
%A=[0,15,3,-17;0,13,5,-4;0,0,-2,5;0,0,0,7];
%b=[-18;0;8;14];

%User traitement

n=input('Entrer la taille de la matrice A : ');
A=zeros(n);
for i=1:1:n
for j=1:1:n
sprintf('A(%d,%d) : ',i,j)
A(i,j)=input('');
end
end
b=zeros(n,1);
disp('Entrer les elements de b :');
for i=1:1:n
sprintf('b(%d,%d)',i,j)
b(i)=input('');
end
test1=0;
for i=1:n
   
       if(A(i,i)==0)
           test1=1;
       end
end

if(test1==1)
    disp('Matrice non inversible');
end

test2=0;
% for i=1:n
%    for j=1:i %j:1-=>i
%       % if(j<=i)
%            if(A(i,j)==0)
%               test2=1;
%            end
%       % end
%    end     
% end


for i=1:n
   for j=1:(i-1) %j:1-=>i
      % if(j<=i)
           if(not(A(i,j)==0))
              test2=1;
           end
      % end
   end     
end

if(test1==0 && test2==0)
x=remontee(A,b);
disp(x);
else
    if not(test1==0)
    disp('Matrice non inversible');
    end
    if not(test2==0)
        disp('Matrice non triangulaire inf');
    end
end;
