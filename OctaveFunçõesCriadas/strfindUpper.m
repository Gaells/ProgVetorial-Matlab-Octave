  function mret = strfindUpper(xstr, s)
  n = length(s); %matriz
  m = length(xstr); %subString
  k = n-m+1;
  ids = repmat((1:k)', 1, m) + repmat((1:m)-1, k, 1);
  matches = sum(s(ids) == repmat(xstr, k, 1), 2);
  inds = find(matches == m)';
  if isempty(inds)
    mret = [];
  else
    % Converter os strings encontrados em maiúsculo
    upperStr = upper(xstr);
    s = strrep(s, xstr, upperStr);
    %A função strrep é uma função que é usada para substituir substrings
    %em uma sequência de caracteres por outro substring especificado.
    %strrep(str, old, new)
  end
  disp(s); % Exibindo a sequência modificada
end


