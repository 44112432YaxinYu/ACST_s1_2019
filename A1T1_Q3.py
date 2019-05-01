guess = int(input('input the guess year: '))
if (guess % 400 == 0) or (guess%4 == 0 and guess % 100 != 0):
    print(guess,'is a leap year!')
else:
    print(guess,'is not a leap year!')
