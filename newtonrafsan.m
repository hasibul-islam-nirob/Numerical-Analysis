
%% ID: 182482526
%% Name:  Hasibul Islam Nirob


func=@(x) x.^3-x-1;
derivFunc=@(x) 3*x.^2-1;
x=1;
h = func(x) / derivFunc(x); 

 while abs(h)>=0.0001
   y=func(x);
   z=derivFunc(x);
        h = func(x)/derivFunc(x); 
        x = x - h; 
 endwhile
 fprintf('\n\n');
 fprintf('The root is : %f',x);