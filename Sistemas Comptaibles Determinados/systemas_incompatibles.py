# x + y = 2
# x - y = 1
# 2x + y = 3

linsolve(Matrix(([1, 1, 2], [1, -1, 1], [2, 1, 3])), (x, y))
output(EmptySet)
