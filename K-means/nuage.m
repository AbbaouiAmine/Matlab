function [  ] = nuage( TD,d,m)
x=TD(:,1);
y=TD(:,2);
plot(x,y,d);
    title('Nuage de point')
    xlabel('variable 1')
    ylabel('variable 2')
    
    axis([0 m -m m])
end

