
# Fibonacci Sequence 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ……..0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ……..

def fibnochi (self):
    if self < 0:
        print("Please enter positive integer")

    else:
        a = "0"
        b = "1"
        my_list = []

        for i in range(self + 1):
            a = str(a)
            my_list.append(a)

            a = int(a)
            b = int(b)
            next = a + b
            a = b
            b = next

        # Display the fibonacci sequence
        print("Fibonacci Sequence is: ", " , ".join(my_list))

        # Display nth value
        my_list.reverse()
        fib = int(my_list[0])
        print("nth value is : ", fib)



n = int(input("Enter a value (nth value) to display the list upto nth Fibonacci number: "))
fibnochi(n)
