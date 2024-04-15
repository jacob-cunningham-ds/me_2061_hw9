function [ p ] = DEIM(U)
[~,~,p] = qr(U', 'vector'); % qdeim
p = p(1:size(U,2));         % take points equal to number of basis 
p = sort(p);
end

