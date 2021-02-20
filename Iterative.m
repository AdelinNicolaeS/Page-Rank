function R = Iterative(nume, d, eps)
  intrare = fopen(nume, 'r');
  N = fscanf(intrare, '%d', 1);
  % initializari matrice/vectori
  A = zeros(N, N);
  K = zeros(N, N);
  R_0 = zeros(N, 1);
  R_0 = R_0 + 1/N;
  for i = 1:N
    linie = fscanf(intrare, '%d', 1);
    lg = fscanf(intrare, '%d', 1);
    rep = 0;
    for j = 1:lg
      x = fscanf(intrare, '%d', 1);
      % ma asigur ca diagonala ramane 0
      if x == linie
        rep = rep + 1;
      else
        A(linie, x) = 1;
      endif
    endfor
    % scad cazurile cand o pagina trimite catre ea insasi
    K(i, i) = lg - rep;
  endfor
  M = (PR_Inv(K) * A)';
  % continui recalcularea pana ajung in marja de eroare
  while 1
    R = d * M * R_0 + ((1 - d)/N) * ones(N, 1);
    if abs((R - R_0)) < eps
      % diferenta in marja de eroare, pastrez penultimul R
      R = R_0;
      return
    else
      R_0 = R;
    endif
  endwhile
  fclose(intrare);
endfunction
