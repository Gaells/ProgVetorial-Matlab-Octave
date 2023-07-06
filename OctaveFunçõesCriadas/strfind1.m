function mret = strfind3(xstr, s)
  n = length(s);
  m = length(xstr);
  k = n-m+1;
  ids = repmat((1:k)', 1, m) + repmat((1:m)-1, k, 1);
  matches = sum(s(ids) == repmat(xstr, k, 1), 2);
  inds = find(matches == m)';
  if isempty(inds)
    mret = [];
  else
    mret = inds + (0:(m-1));
    % Converter os strings encontrados em maiúsculo
    upperStr = upper(xstr);
    s = strrep(s, xstr, upperStr);
  end
  disp(s); % Exibindo a sequência modificada
end


