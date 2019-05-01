m = int(input('input the month number: '))
d = int(input('input the day number: '))
if 1 <= d <= 31 and 1 <= m <= 12:
    if 3 <= m <= 6:
        if m == 3 and d >= 20:
            print('The time is in the interval 3/20 to 6/20')
        elif m == 3 and d < 20:
            print('The time is out of the interval 3/20 to 6/20')
        elif m == 6 and d <= 20:
            print('The time is in the interval 3/20 to 6/20')
        elif m == 6 and d >= 20:
            print('The time is out of the interval 3/20 to 6/20')
        elif m == 4 and d == 31:
            print('Error date !!!')
        else:
            print('The time is in the interval 3/20 to 6/20')
    else:
        print('The time you is out of the interval 3/20 to 6/20')
else:
    print('Error date !!!')
