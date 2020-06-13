%% my model fot fs
%% 
function fourier_series = fou_ser()
    syms x 
    pi=3.14;
    sum=0; 
    y=exp(x);   %function you want
    a0=(1/pi)*integral(y,x,-pi,pi);
    for n=1:3
        %finding the coefficients
        an=(1/pi)*integral(y*cos(n*x),x,-pi,pi);
        bn=(1/pi)*integral(y*sin(n*x),x,-pi,pi);   
        sum=sum+(an*cos(n*x)+bn*sin(n*x)); 
    end
    ezplot(x,y,[-pi,pi]);
    grid on;hold on; 
    ezplot(x,(sum+a0/2),[-pi,pi]);
%     x=linspace(-pi,pi,1);
%     y=exp(x)
%     for n=-10:10
%         fun = @(x) sin(x).*exp(-i*n.*x);
%         fun_o = @(x)sin(x);
%         c_n= (integral(fun,-pi,pi))/2*pi
%         c_o= (integral(fun_o,-pi,pi))/2*pi
%         sm=c_o+c_n
%         plot(sm,'o')
%         
%     end
    
end
%% 
% %% syms x 
% pi=3.14;
% sum=0; 
% y=exp(x);   %function you want
% a0=(1/pi)*integral(y,x,-pi,pi);
% for n=1:3
%         %finding the coefficients
%     an=(1/pi)*int(y*cos(n*x),x,-pi,pi);
%     bn=(1/pi)*int(y*sin(n*x),x,-pi,pi);   
%     sum=sum+(an*cos(n*x)+bn*sin(n*x)); 
% end
% ezplot(x,y,[-pi,pi]);
% grid on;hold on; 
% ezplot(x,(sum+a0/2),[-pi,pi]);
% %% 
