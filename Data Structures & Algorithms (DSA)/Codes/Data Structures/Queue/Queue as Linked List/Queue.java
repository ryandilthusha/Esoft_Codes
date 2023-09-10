class QNode {
	
    //Constructor
    int key;
    QNode next;

    // Another Constructor to create a new linked list node
    public QNode(int key) {
        this.key = key;
        this.next = null;
    }
}


class Queue {

    QNode front, rear;

    public Queue() {
        this.front = this.rear = null;
    }

    // Method to add an key to the Queue
    void enqueue(int key) {

        // Create a new LL node
        QNode temp = new QNode(key);

        // If queue is empty, then new node is front and rear both
        if (this.rear == null) {
            this.front = this.rear = temp;
            return;
        }

        // Add the new node at the end of queue and change rear
        this.rear.next = temp;
        this.rear = temp;

    }

    // Method to remove an key from queue.
    void deQueue() {



// If queue is empty, return null.
        if (this.front == null)
            return;


        // Store previous front and move front one node ahead
        QNode temp = this.front;
        this.front = this.front.next;



        // If front becomes null, then change rear also as null
        if (this.front == null)
            this.rear = null;

    }
}



