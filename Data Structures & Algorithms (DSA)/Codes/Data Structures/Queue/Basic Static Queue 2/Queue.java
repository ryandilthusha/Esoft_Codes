public class Queue {

    private int front, rear, capacity;
    private int queue[];


    Queue(int c){

        front = rear = 0;
        capacity = c;
        queue = new int [capacity];

    }

    //function to insert an element
    //at the rear of the queue
    void queueEnqueue(int data){

        //check queue is full or not
        if (capacity==rear){
            System.out.println("\n\nQueue is full\n");
            return;
        }

        //insert element at the rear
        else{
            queue[rear] = data;
            rear++;
        }

    }

    //function to delete an element
    //from the front of the queue
    void queueDequeue(){

        //if queue is empty
        if (front==rear){
            System.out.println("\n\nQueue is Empty\n");
            return;
        }

        //shift all the elements from index 2 till rear
        //to the right by one
        else{
            for(int i=0; i<rear - 1; i++){
                queue[i] = queue[i+1];
            }

            //store 0 at the rear indicating there's no element
            if(rear<capacity)
                queue[rear] = 0;

            //decrement rear
            rear--;
        }

    }

    //print queue elements
    void queueDisplay(){

        int i;

        //if queue is empty
        if (front==rear){
            System.out.printf("\n\nQueue is Empty\n");
            return;
        }

        //traverse front to rear and print elements
        for(i=front; i<rear; i++){
            System.out.printf("%d <-- ", queue[i]);
        }
    }

    //print front of queue
    void queueFront(){

        //if queue is empty
        if (front==rear){
            System.out.printf("\n\nQueue is Empty\n");
            return;
        }
        else{
            System.out.printf("\n\nFront element is: %d", queue[front]);
        }
    }

    public static void main(String[] args) {

        //Create a queue of capacity 4
        Queue q = new Queue(4);

        //print Queue elements
        q.queueDisplay();

        //inserting elements
        q.queueEnqueue(20);
        q.queueEnqueue(30);
        q.queueEnqueue(40);
        q.queueEnqueue(50);

        //print Queue elements
        q.queueDisplay();

        //insert elements again
        q.queueEnqueue(60);

        //print Queue elements
        q.queueDisplay();

        q.queueDequeue();
        q.queueDequeue();
        System.out.printf("\n\nafter two node deletion\n");

        //print Queue elements
        q.queueDisplay();

        //print front queue
        q.queueFront();
    }
}
