function B = PR_Inv(A)
  [n n] = size(A);
  Q = zeros(n, n);
  R = zeros(n, n);
  B = zeros(n, n);
  % obtinere factorizare QR
  for i = 1:n
    R(i, i) = norm(A(:, i));
    Q(:, i) = A(:, i)/R(i, i);
    for j = (i + 1):n
      R(i, j) = Q(:, i)' * A(:, j);
      A(:, j) = A(:, j) - Q(:, i) * R(i, j);
    endfor
  endfor
  In = eye(n);
  for i=1:n
    B(:, i) = SST(Q, R, In(:, i));
  endfor
endfunction