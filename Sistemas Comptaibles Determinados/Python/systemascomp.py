import numpy as np

#x1 + x2 + 2x3 = 9
#2x1 + 4x2 - 3x3=1
#3x1 + 6x2 - 5x3=0


A = np.array([[1,1,2],[2,4,-3],[3,6,-5]])
b = np.array([9,1,0])
AB = np.array([[1,1,2,9],[2,4,-3,1],[3,6,-5,0]])

#Comprobacion de rango A
np.linalg.matrix_rank(A) == np.linalg.matrix_rank(AB)

output = True

#Comprobamos que numero de incognitas  == a rank

np.linalg.matrix_rank(A) == 3

output = True

#Resolvemos

x = np.linalg.solve(A, b)
x

output(array([1., 2., 3.]))

