function solution = gauss_column(A, b)
  n = length(A);

  solution = zeros(n, 0);

  for k = 1:n - 1
    #Loop to find highest value
      max = k;
      for i = k + 1:n
        if abs(A(i, k)) > abs(A(max, k))
          max = i;
        endif
      endfor
      
      #We check if (max == 0) statement is true, if so we continue.
      if A(max, k == 0)
      continue;
      endif

      #We permute k value
      tmp = A(k, :);
      A(k, :) = A(max, :);
      A(max, :) = tmp;

      tmp = b(k);
      b(k) = b(max);
      b(max) = tmp;

    for i = k + 1:n
      m = A(i, k) / A(k, k);
      A(i,k) = 0;
      #Gaussian triangulation
      for j = k+1:n
        A(i, j) = A(i, j) - (m * A(k, j));
      endfor

      b(i) = b(i) - (m * b(k));
    endfor
  endfor
  
  display(A)
  display(b)
  
  solution = upper_triangular_solver(A, b);
  
  display(solution)

endfunction
