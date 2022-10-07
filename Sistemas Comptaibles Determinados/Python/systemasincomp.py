# x + y - z = 2
# x - y + z = 1
# 3x + y - z = 5

#Definimos matriz
A = np.array([[1,1,-1],[1,-1,1],[3,1,-1]])
B = np.array([2,1,5])
AB = np.array([[1,1,-1,2],[1,-1,1,1],[3,1,-1,5]])

#Rangos de matriz
np.linalg.matrix_rank(A)
output(2)

np.linalg.matrix_rank(A) == np.linalg.matrix_rank(AB)
output(True)

