with open('input.txt', 'r') as f:
    matrix = [[int(num) for num in line.split(',')] for line in f]

# prints Matrix

print(matrix)


def column(matrix, i):
    return [row[i] for row in matrix]



col = input("Enter the column to be extracted:")
col = int(col)
cols  = column(matrix, col)

# prints coloumn Values
print(cols)

# prints row value

row = int(input("Enter the row to be extracted:"))
print(matrix[row])

#quardrant
q = int(input("Enter the number to be quardrant:"))
quardrant =  [matrix[q][:2], matrix[q][:2]]
print(quardrant)
