
n = int(input("Enter factorial number (!n): "))

fac = 1
my_list = []

#Using loop to show Factorial number sequence
for i in range (n,0,-1):
    i = str (i)             #To convert integer to string
    my_list.append(i)

#Using loop to get Factorial number sequence final answer
for i in range (n,0,-1):
    fac = fac * i




print("!n = " , " * ".join(my_list) , " = " ,fac)