%% ID: 182482526
%% Name:  Hasibul Islam Nirob


A=[28 4 -1;1 3 10;2 17 4];
b=[32;24;35];
Ab=[A,b];
%% with A(1,1) as pivot matrix
alpha=Ab(2,1)./Ab(1,1);
Ab(2,:)=Ab(2,:)-alpha*Ab(1,:);
alpha=Ab(3,1)./Ab(1,1);
Ab(3,:)=Ab(3,:)-alpha*Ab(1,:);
%% with A(2,2) as pivot matrix
alpha=Ab(3,2)./Ab(2,2);
Ab(3,:)=Ab(3,:)-alpha*Ab(2,:);
%% Back-Substitution
x=zeros(3,1);
%%Row 3, Column 1
x(3)=Ab(3,end)./Ab(3,3);
x(2)=(Ab(2,end)-Ab(2,3).*x(3))./(Ab(2,2));
x(1)=(Ab(1,end)-((Ab(1,3).*x(3)+Ab(1,2)*x(2))))./Ab(1,1)