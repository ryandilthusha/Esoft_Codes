
def factorial (self):
    count = self  # define variable for 1st loop
    fac = 1
    my_list = []

    # Using loop to show Factorial number sequence
    while count > 0:
        count = str(count)  # To convert integer to string when adding to list
        my_list.append(count)

        count = int(count)  # To convert string to integer when calculating
        count = count - 1

    # Using loop to get Factorial number sequence final answer
    while self > 0:
        fac = fac * self
        self = self - 1

    print("!n = ", " * ".join(my_list), " = ", fac)




n = int(input("Enter factorial number (!n): "))
factorial(n)