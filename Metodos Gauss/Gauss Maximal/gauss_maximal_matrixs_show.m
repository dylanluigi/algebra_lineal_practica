function [A,b]= gauss_maximal_matrixs_show(A, b)
  
  n = length(A);
  solution = zeros(n); #solution es matriz nxn de 0
  perm = 1:n;

  for k = 1:n - 1
    #Loop to find highest value
      max = {k, k};
      for maxk = k:n
        for maxCol = k:n
          if abs(A(maxk, maxCol)) > abs(A(max{1}, max{2}))
            max{1} = maxk;
            max{2} = maxCol;
          endif
        endfor
      endfor

      #We permute k value
      tmp = A(k, :);
      A(k, :) = A(max{1}, :);
      A(max{1}, :) = tmp;

      tmp = b(k);
      b(k) = b(max{1});
      b(max{1}) = tmp;

      #We permute columns
      tmp = A(:, k);
      A(:, k) = A(:, max{2});
      A(:, max{2}) = tmp;

      #Apply
      tmp = k;
      perm(k) = max{2};
      perm(max{2}) = tmp;

    for i = k + 1:n
      m = A(i, k) / A(k, k);

      #Gaussian triangulation
      for j = k:n
        A(i, j) = A(i, j) - (m * A(k, j));
      endfor

      b(i) = b(i) - (m * b(k));
    endfor#k + 1 use to make 0's
  endfor#k

  solution = reorder_solution(solution, perm);

endfunction
