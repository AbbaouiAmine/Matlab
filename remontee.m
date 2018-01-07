function [ x ] = remontee( A,b )

n = size(A,1);
x=zeros(n,1);

x(n)=b(n,1)/A(n,n);

for i=(n-1):-1:1
x(i)=b(i,1);
for k=(i+1):1: n
x(i)=x(i)-A(i,k)*x(k);
end
x(i)=x(i)/A(i,i);
end
end

