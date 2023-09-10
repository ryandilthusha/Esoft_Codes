// Main class for simulating the supermarket scenario
public class SupermarketSimulator {
    public static void main(String[] args) {
        Queue supermarketQueue = new Queue(5); // Queue with a maximum of 5 customers

        // 5 customers arrive
        for (int i = 1; i <= 5; i++) {
            supermarketQueue.enqueue(i);
            System.out.println("Customer " + i + " arrived");
        }

        // Serve customers
        while (!supermarketQueue.isEmpty()) {
            int servedCustomer = supermarketQueue.dequeue();
            System.out.println("Customer " + servedCustomer + " served");
        }
    }
}
