
# Fibonacci Sequence 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ……..0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ……..

def fibonacci (self):
    if self < 0:
        print("Please enter positive integer")

    else:
        firstnum = "0"
        secondnum = "1"
        my_list = []

        for i in range(self + 1):
            firstnum = str(firstnum)
            my_list.append(firstnum)

            firstnum = int(firstnum)
            secondnum = int(secondnum)
            next = firstnum + secondnum
            firstnum = secondnum
            secondnum = next

        # Display the fibonacci sequence
        print("Fibonacci Sequence is: ", " , ".join(my_list))

        # The way to calculate nth value
        my_list.reverse()

        last = int(my_list[1])
        before_last = int(my_list[2])
        fib = last + before_last

        print("nth value is : ", fib)



n = int(input("Enter a value (nth value) to display nth Fibonacci number: "))
fibonacci(n)