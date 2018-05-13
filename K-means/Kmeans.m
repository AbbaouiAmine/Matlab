
%%Definition des donnees sous forme d'une matrice
TD=[ 2,10; 2,5;8,4;5,8;7,5; 6,4; 1,2;4,9]; 
%T = TableauDistance( TD);
%disp(T);
%nuage( TD,'bo',max(TD(:)));
%choix des centres des classes 

k=3;
c=[1,8,7];
C=classement( c,TD,0);
g=zeros(k,2);

for i=1 : k
    tmp=C(C(:,3) == c(i),:);
%     nuage(tmp ,'b--o',max(TD(:)));
%     hold on;
%     disp(size(g(i,:)));
    g(i,:)=centre( tmp);
end


%disp(C);
% ind1 = C(:,3) == 1;
% ind2 = C(:,3) == 4;
% ind3 = C(:,3) == 7;
% C1 = C(ind1,:);
% C2 = C(ind2,:);
% C3 = C(ind3,:);
% nuage( C1,'b--o',max(TD(:)));
% hold on;
% nuage( C2,'gs',max(TD(:)));
% hold on;
% nuage( C3,'c*',max(TD(:)));
% disp(C1);
% disp(C2);
% disp(C3);



 
 
 
g1=zeros(k,2);
niteration=1;
while (isequal(g,g1)==0)
            C= classement( g,TD,1);
        %     disp(C);

         c=[1,2,3];
         g1=g;
         for i=1 : k
            tmp=C(C(:,3) == c(i),:);
        %     nuage(tmp ,'b--o',max(TD(:)));
        %     hold on;
        %     disp(size(g(i,:)));
            g(i,:)=centre( tmp);
         end
         niteration=niteration+1;
end

disp('Le nobre des iterations est :');
disp(niteration);
ind1 = C(:,3) == 1;
ind2 = C(:,3) == 2;
ind3 = C(:,3) == 3;


C1 = C(ind1,:);
C2 = C(ind2,:);
C3 = C(ind3,:);

disp(C1);
disp(C2);
disp(C3);


nuage( C1,'bo',max(TD(:)));
hold on;
nuage( C2,'gs',max(TD(:)));
hold on;
nuage( C3,'c*',max(TD(:)));
nuage(g ,'r*',max(TD(:)));

