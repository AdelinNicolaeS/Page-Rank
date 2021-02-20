function [R1 R2] = PageRank(nume, d, eps)
  R1 = Iterative(nume, d, eps);
  R2 = Algebraic(nume, d);
  nume_out = strcat(nume, ".out");
  out_file = fopen(nume_out, "w");
  intrare = fopen(nume, "r");
  % obtin tot continutul fisierului
  tot = fscanf(intrare, "%f");
  N = tot(1);
  val1 = tot(length(tot)-1);
  val2 = tot(length(tot));
  fclose(intrare);
  % afisez N, R1 si R2
  fprintf(out_file, "%d\n", N);
  fprintf(out_file, "\n");
  fprintf(out_file, "%f\n", R1);
  fprintf(out_file, "\n");
  fprintf(out_file, "%f\n", R2);
  fprintf(out_file, "\n");
  % sortez folosind o functie deja existenta
  sort_R = sort(R2, 'descend');
  for i = 1:N
    fprintf(out_file, "%d ", i);
    % aflu indicele in vectorul nesortat
    for j = 1:N
      if sort_R(i) == R2(j)
        poz = j;
        break;
      endif
    endfor
    fprintf(out_file, "%d %f\n", poz, Apartenenta(sort_R(i), val1, val2));
  endfor
  fclose(out_file);
 endfunction 