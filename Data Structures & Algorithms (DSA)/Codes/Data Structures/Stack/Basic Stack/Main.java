class Stack {


    static final int MAX = 1000;
    int top;
    int a[] = new int[MAX]; 



    Stack()
    {
        top = -1;
    }



    boolean isEmpty()
    {
        return (top < 0);
    }



    boolean push(int x)
    {
        if (top >= (MAX - 1)) {
            System.out.println("Stack Overflow");
            return false;
        }
        else {
            a[++top] = x;
            System.out.println(x + " pushed into stack");
            return true;
        }
    }



    int pop()
    {
        if (top < 0) {
            System.out.println("Stack Underflow");
            return 0;
        }
        else {
            int x = a[top--];
            return x;
        }
    }









    int peek()
    {
        if (top < 0) {
            System.out.println("Stack Underflow");
            return 0;
        }
        else {
            int x = a[top];
            return x;
        }
    }

    void print(){
        for(int i = top;i>-1;i--){
            System.out.print(" "+ a[i]);
        }
    }
}




// Driver code
class StackAsArray {
    public static void main(String args[])
    {
        Stack s = new Stack();
        s.push(10);
        s.push(20);
        s.push(30);
        s.push(40);
        s.push(50);
        s.push(60);
        System.out.println("*************************");
        System.out.println(s.pop() + "Popped from stack");
        System.out.println(s.pop() + "Popped from stack");
        System.out.println("*************************");
        System.out.println("Top element is :" + s.peek());
        System.out.println("*************************");
        System.out.println("Elements present in stack :");
        s.print();
        System.out.println(" ");
        System.out.println("*************************");
    }
}

