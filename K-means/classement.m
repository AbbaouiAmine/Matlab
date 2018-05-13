function [ C ] = classement( centres,T,flag)

tmp=[T,zeros(length(T),1)];
%%disp(tmp);
if ( flag == 0)%calcul par l'utilistation des distances 
    for i= 1 : length(T)
        if(ismember(i,centres)==0)
            d_min=centres(1);
            for j=2 :length(centres)
                if(distance(T(i,1),T(i,2),T(centres(j),1),T(centres(j),2))<distance(T(i,1),T(i,2),T(d_min,1),T(d_min,2)))
                d_min=centres(j);
                end
            end
            tmp(i,3)=d_min;
        else
         tmp(i,3)=i;   
        end
    end
    C=tmp; 
else %calcul par l'utilistation des distances avec centres de gravites
       for i= 1 : length(T)
            d_min=1;
            for j=2 :length(centres)
                if(distance(T(i,1),T(i,2),centres(j,1),centres(j,2))<distance(T(i,1),T(i,2),centres(d_min,1),centres(d_min,2)))
                d_min=j;
                end
            end
            tmp(i,3)=d_min;
       end
      C=tmp;    
    end 
end


