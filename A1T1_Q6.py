from math import *
t = int(input('input the number of year: '))
P = int(input('input the original value: '))
r = float(input('input the annual interest rate: '))
Money = P*pow(e, r*t)
Money = round(Money, 2)
print('The amount of money is', Money)
