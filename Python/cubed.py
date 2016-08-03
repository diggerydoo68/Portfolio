number = raw_input("Enter number")

def cube(number):
    answer = number**3
    return (answer)

def by_three(answer):
    if answer % 3 == 0:
        return cube(answer)
    else:
        return (False)
