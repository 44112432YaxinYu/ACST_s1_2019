import random as rd
a = int(input('input the first number a: '))
b = int(input('input the second number b: '))
if a < b:
    answer = rd.randint(a, b)
    print(answer, 'is a random integer between', a, 'and', b, '!')
else:
    answer = rd.randint(b,a)
    print(answer, 'is a random integer between', b, 'and', a, '!')
