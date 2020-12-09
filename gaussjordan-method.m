%% ID: 182482526
%% Name:  Hasibul Islam Nirob


a = [10 1 1 12
2 10 1 13
1 1 5 7];
[m,n]=size(a);
for j=1:m-1
  for i=j+1:m
    a(i,:)=a(i,:)-a(j,:)*(a(i,j)/a(j,j));
  end
end

  for j=m:-1:2
    for i=j-1:-1:1
      a(i,:)=a(i,:)-a(j,:)*(a(i,j)/a(j,j));
    end
  end

  for s=1:m
    a(s,:)=a(s,:)/a(s,s);
    x(s)=a(s,n);
   end
disp('Gauss-Jordan method:');
a
x'
