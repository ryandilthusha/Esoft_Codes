// Queue class definition
public class Queue {
    private int maxSize;
    private int front;
    private int rear;
    private int[] queueArray;

    // Constructor
    public Queue(int size) {
        this.maxSize = size;
        this.queueArray = new int[maxSize];
        this.front = 0;
        this.rear = -1;
    }

    // Check if the queue is empty
    public boolean isEmpty() {
        return (rear == -1);
    }

    // Check if the queue is full
    public boolean isFull() {
        return (rear == maxSize - 1);
    }

    // Get the size of the queue
    public int size() {
        return rear - front + 1;
    }

    // Insert an element at the rear of the queue
    public void enqueue(int value) {
        if (!isFull()) {
            queueArray[++rear] = value;
        } else {
            throw new RuntimeException("Queue is full");
        }
    }

    // Remove an element from the front of the queue
    public int dequeue() {
        if (!isEmpty()) {
            int temp = queueArray[front];
            for (int i = 0; i < rear; i++) {
                queueArray[i] = queueArray[i + 1];
            }
            if (rear < maxSize)
                queueArray[rear] = 0;
            rear--;
            return temp;
        } else {
            throw new RuntimeException("Queue is empty");
        }
    }
}


