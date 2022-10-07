%matriz fila

row = [1 2 3]

%matriz columna

col = [1;2;3]

%Para crear una matriz

M=[1 2 3; 4 5 6; 7 8 9]

%Para llamar a un elemento

M=[1 2 3; 4 5 6; 7 8 9]
M(1,1)
  
%Para llamar una fila

M = [1 2 3; 4 5 6; 7 8 9];
M(2,:)
  
%Para llamar una columna
  
M = [1 2 3; 4 5 6; 7 8 9];
M(:,3)
  
%Conocer el tipo de una matriz

M = [1 2 3; 4 5 6; 7 8 9];
matrix_type(M)

ans = Full
  
N = [1 0 0; 0 1 0; 0 0 9];
matrix_type(N)
  
ans = Upper


%crear matriz con 0/1 elemento

0 = repmat(0,m,n)
  
ones = repmat(1,m,n)
  
%Crear una matriz diagonal
N = diag([1 2 3 4 5])
  
%Diagonal principal de una Matriz
diagonal = diag(N)
  
  
%Dimension de una matriz
M = [1 2 3; 4 5 6; 7 8 9];
size(M)
  
%Sumar elementos de una matriz
M = [1 2 3; 4 5 6; 7 8 9];
suma = sum(sum(M))

  
%Sumar elementos por filas
M = [1 2 3; 4 5 6; 7 8 9];
sumaFil = sum(M,2)
  
%Sumar elementos por columna
M = [1 2 3; 4 5 6; 7 8 9];
sumaCol = sum(M) o sum(M,1)
  
%Multiplicar elementos de una matriz
M = [1 2 3; 4 5 6; 7 8 9];
producto = prod(prod(M))
  
%Calcular la media de los elementos de una matriz
M = [1 2 3; 4 5 6; 7 8 9];
media = mean(mean(M))
  
%Media por filas
M = [1 2 3; 4 5 6; 7 8 9];
mediaFil = mean(M,2)

%Media por columnas
M = [1 2 3; 4 5 6; 7 8 9];
mediaFil = mean(M,1)

%Transpuesta
M = [1 2 3; 4 5 6; 7 8 9];
M'
  
%Rango de una matriz
A = [1 -1; 0 3];
rank(A)

%Inversa de una matriz
A = [1 -1; 0 3];
inv(A)


  
