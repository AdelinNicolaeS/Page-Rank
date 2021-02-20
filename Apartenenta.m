function y = Apartenenta(x, val1, val2)
  if x < val1
    y = 0;
   elseif x > val2
    y = 1;
  else
    % am rezolvat sistemul de 2 ecuatii cu 2 necunoscute
    % am impus continuitatea in val1 si val2
    a = 1/(val2 - val1);
    b = -val1/(val2 - val1);
    y = a * x + b;
  endif
endfunction