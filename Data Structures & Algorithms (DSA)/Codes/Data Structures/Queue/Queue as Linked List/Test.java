public class Test {

    public static void main(String[] args) {
        Queue q = new Queue();

        q.enqueue(10);
        q.enqueue(20);
        q.deQueue();
        q.deQueue();
        q.enqueue(30);
        q.enqueue(40);
        q.enqueue(50);
        q.deQueue();
        System.out.println("Queue Front : " + q.front.key);
        System.out.println("Queue Rear : " + q.rear.key);
    }

}