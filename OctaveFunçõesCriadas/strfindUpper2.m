function [inds, s] = strfindUpper2(xstr, s)  
  if isempty(inds = find(sum(s(repmat((1:(length(s)-length(xstr)+1))', 1, length(xstr)) + repmat((1:length(xstr))-1, (length(s)-length(xstr)+1), 1)) == repmat(xstr, (length(s)-length(xstr)+1), 1), 2) == length(xstr))')
    inds = [];
  else s = strrep(s, xstr, upper(xstr));
  end
end