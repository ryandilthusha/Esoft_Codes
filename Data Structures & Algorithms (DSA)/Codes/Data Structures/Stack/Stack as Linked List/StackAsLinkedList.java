public class StackAsLinkedList{    //Declaration of class named " StackAsLinkedList”

    StackNode root;


    static class StackNode{

        int data;
        StackNode next;



        StackNode(int data)
        {
            this.data = data;
        }
    }


    public boolean isEmpty()
    {
        if (root == null){
            return true;
        }
        else
            return false;
    }


    public void push (int data)
    {

        StackNode newNode = new StackNode(data);



        if (root == null){
            root = newNode;
        }


        else {
            StackNode temp = root;
            root = newNode;
            newNode.next = temp;
        }


        System.out.println(data + " Pushed to Stack");
    }


    public int pop()
    {
        int popped = Integer.MIN_VALUE;


        if(root == null){
            System.out.println("Stack is Empty");
        }



        else {
            popped = root.data;
            root = root.next;
        }
        return popped;
    }

    public int peek(){

        if (root == null){
            System.out.println("Stack is Empty");
            return Integer.MIN_VALUE;
        }

        else{
            return root.data;
        }
    
    }

    public static void main (String[] args)
    {
        StackAsLinkedList s11 = new StackAsLinkedList();
        s11.push(10);
        s11.push(20);
        s11.push(30);
        s11.push(40);
        System.out.println(s11.pop() + " popped from stack");
        System.out.println("Top Element is "+ s11.peek());
    }
}


