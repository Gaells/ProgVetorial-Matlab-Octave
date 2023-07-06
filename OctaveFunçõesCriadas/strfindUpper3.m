function [inds, s] = strfindUpper3(xstr, s)
  n = length(s); %matriz
  m = length(xstr); %subString
  k = n-m+1;
  ids = repmat((1:k)', 1, m) + repmat((1:m)-1, k, 1);
  matches = sum(s(ids) == repmat(xstr, k, 1), 2);
  inds = find(matches == m)';
  if isempty(inds)
    mret = [];
  else
    upperStr = upper(xstr);
    s = strrep(s, xstr, upperStr);
  end
end


