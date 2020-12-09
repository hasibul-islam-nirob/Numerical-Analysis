%% ID: 182482526
%% Name:  Hasibul Islam Nirob


func=@(x) x.^3-21*x+3500;
derivFunc=@(x) 3*x.^2-21;
x=-15;
h = func(x) / derivFunc(x); 
 while abs(h)>=0.001
        h = func(x)/derivFunc(x); 
        x = x - h; 
 endwhile
 fprintf('The root is : %f',x);