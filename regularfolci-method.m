%% 182482526
%% Hasibul Islam Nirob


f=@(x) x.^2-5.*x+2;
a=4.5;
b=4.6;
for i=0:50
  %%the equation of falsi method
  x=(a.*f(b)-b.*f(a))./(f(b)-f(a));
  if(f(a).*f(x)>0)
    a=x;
  else
    b=x;
  end
end
fprintf('\n\n');
fprintf('The root is %f',x);