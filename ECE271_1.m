%importfile('E:\ECE271\HW1\TrainingSamplesDCT_8.mat')
B=TrainsampleDCT_BG;
C=TrainsampleDCT_FG;
[s1,s2]=size(B);
[n1,n2]=size(C);
AB=zeros(1,s1);
AF=zeros(1,n1);
for i=1:s1
    for j=1:n1
         [c1,X]=sort(C(j,:),'descend'); 
         AF(:,j)=X(2);
    end
    [c,X1]=sort(B(i,:),'descend');
    AB(:,i)=X1(2); 
end
% edge=[2:65];
% AFnew=reshape(AF,250,1);
% ABnew=reshape(AB,1053,1);
% NF=histcounts(AFnew,edge);
% NB=histcounts(ABnew,edge);
% givenCheetah1= zeros(63,1);
% givenGrass1 = zeros(63,1);
% for i = 1:size(NF,2)
%     tempFG = NF(1,i)/sum(NF);
%     tempBG = NB(1,i)/sum(NB);
%     givenCheetah1(i,1) = tempFG;
%     givenGrass1(i,1) = tempBG;
% end
%subplot(1,2,1);
%AFH=histogram(AF,'Normalization','probability');
%subplot(1,2,2);
%ABH=histogram(AB,'Normalization','probability');