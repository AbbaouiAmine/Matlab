function [ T ] = TableauDistance( M)
T=zeros(length(M));
    for i = 1:length(M)
        for j = 1:length(M)
        T(i,j)=distance(M(i,1),M(i,2),M(j,1),M(j,2));
        end
    end
end

