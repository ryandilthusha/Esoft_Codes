
# Fibonacci Sequence 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ……

n = int(input("Enter a value (nth value) to display nth Fibonacci number: "))

if n < 0:
    print("Please enter positive integer")

else:
    firstnum = "0"
    secondnum = "1"
    my_list = []

    for i in range(n+1):
        firstnum = str(firstnum)
        my_list.append(firstnum)

        firstnum = int(firstnum)
        secondnum = int(secondnum)
        next = firstnum + secondnum
        firstnum = secondnum
        secondnum = next

    #Display the fibonacci sequence
    print("Fibonacci Sequence is: ", " , ".join(my_list))

    #Display nth value
    my_list.reverse()
    fib = int(my_list[0])
    print("nth value is : " ,fib)




