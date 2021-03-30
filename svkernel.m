function k = svkernel(ker,p1,u,v)
%SVKERNEL kernel for Support Vector Methods
%
%  Usage: k = svkernel(ker,p1, u,v)
%
%  Parameters: ker - kernel type
%              u,v - kernel arguments
%
%  Values for ker: 'linear'  -
%                  'poly'    - p1 is degree of polynomial
%                  'rbf'     - p1 is width of rbfs (sigma)
%                  'sigmoid' - p1 is scale, p2 is offset
%              
%  Author: Steve Gunn (srg@ecs.soton.ac.uk)

  if (nargin < 1) % check correct number of arguments
     help svkernel
  else
     
    % could check for correct number of args in here
    % but will slow things down further
    switch lower(ker)
      case 'linear'
        k = u*v';
      case 'poly'
        k = (u*v'+1).^p1;
      case 'rbf'
        k = exp(-(u-v)*(u-v)'/(2*p1^2));
      case 'erbf'
        k = exp(-sqrt((u-v)*(u-v)')/(2*p1^2));
      case 'sigmoid'
        k = tanh(p1*u*v'/length(u) + 2);
      otherwise
        k = u*v';
    end

  end