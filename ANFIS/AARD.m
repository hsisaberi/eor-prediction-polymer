function [o, a]=AARD(target,output)
    N=numel(target);
    q=100/N;
    o=zeros(1,N);
    for i=1:N
        w=(target(i)-output(i))/(target(i));
        o(i)=w;
    end
    a=abs(sum(o));
    a=q*a;
end