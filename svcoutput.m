function [yt] = svcoutput(X,Y,tstX,ker,par,alpha,b0)
%
%  Parameters: X   - Training inputs
%              Y   - Training targets
%              tstX   - Test inputs
%              ker    - kernel function
%              alpha   - Lagrange Multipliers
%              b0   - bias
    n = size(X,1);
    m = size(tstX,1);
    H = zeros(n,m);  
    
   % size(H)
     for i=1:n
     for j=1:m
        H(i,j) = svkernel(ker,par,X(i,:),tstX(j,:));
        end
     end
ya=(Y.*alpha)'*H + b0;
ya=ya';
      yt = sign(ya);
      