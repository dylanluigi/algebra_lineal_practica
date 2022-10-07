import numpy as np

#Matriz Fila

row=[1,2,3]

#Matriz Columna

column=[[1],[2],[3]]

#Matriz

M=[[1,2,3],[4,5,6],[7,8,9]]

#Para llamar un elemento de dentro de la matriz
#Los elementos empiezan en zero, por lo tanto, M[0][0] es a11
# M[fila][columna]

M[1][1]

#Para poder usar trabajar con la matriz tenemos que emplear la syntaxis siguiente:

M = np.array([[1,2,3],[4,5,6],[7,8,9]], dtype=int)#type de variable int,float,complex,double#

#Funciones useful:

#Matriz de unos o zeros (para zero = np.zeros())
M = np.ones((filas,columnas))

#Matriz diagonal a partir de valores

x = [1,2,3,4]
M = np.diag(x)

#Dimension de una matriz
np.shape()

#Suma de todos los elementos de una matriz

np.sum(M)

#Si queremos la suma por filas

np.sum(M, axis = 0)

#Si queremos la suma por columnas

np.sum(M, axis = 1)

