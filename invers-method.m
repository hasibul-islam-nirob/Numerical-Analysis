%% ID: 182482526
%% Name:  Hasibul Islam Nirob

A=[2 1 1 ;3 2 3;1 4 9];
b=[1 0 0;0 1 0;0 0 1];
Ab=[A,b];
%% with A(1,1) as pivot matrix
alpha=Ab(2,1)./Ab(1,1);
Ab(2,:)=Ab(2,:)-alpha*Ab(1,:);
alpha=Ab(3,1)./Ab(1,1);
Ab(3,:)=Ab(3,:)-alpha*Ab(1,:);
%% with A(2,2) as pivot matrix
alpha=Ab(3,2)./Ab(2,2);
Ab(3,:)=Ab(3,:)-alpha*Ab(2,:);
%x=zeros(3,3);
x(31)=Ab(3,4)./Ab(3,3);
x(21)=(Ab(2,4)-Ab(2,3).*x(31))./Ab(2,2);
x(11)=(Ab(1,4)-(Ab(1,2).*x(21))-(Ab(1,3).*x(31)))./Ab(1,1);
x(32)=Ab(3,5)./Ab(3,3);
x(22)=(Ab(2,5)-Ab(2,3).*x(32))./Ab(2,2);
x(12)=(Ab(1,5)-(Ab(1,2).*x(22))-(Ab(1,3).*x(32)))./Ab(1,1);
x(33)=Ab(3,end)./Ab(3,3);
x(23)=Ab(2,end)-(Ab(2,3).*x(33))./Ab(2,2);
x(13)=(Ab(1,end)-(Ab(1,3).*x(33))-(Ab(1,2).*x(23)))./Ab(1,1);
disp('Gauss-Jordan method:');
A
b
x'