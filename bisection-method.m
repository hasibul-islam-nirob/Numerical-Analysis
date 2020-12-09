%% ID: 182482526
%% Name:  Hasibul Islam Nirob


f=@(x) x.^3-2*x-5;
a=2.0;
b=2.1;
for i=0:20
  c=(a+b)./2;
  if(f(a).*f(c)>0)
    a=c;
  else
    b=c;
  end
end
fprintf('\n\n');
fprintf('The root is : %f ',c);