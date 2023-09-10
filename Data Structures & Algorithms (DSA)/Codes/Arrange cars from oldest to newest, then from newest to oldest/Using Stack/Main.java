// This is the main driver class
public class Main {
    public static void main(String args[]) {
        Stack s = new Stack(); // Create a new Stack

        System.out.println("\nAdding cars to the stack:");
        // Add Cars to the Stack
        s.push(new Car(1, "Brand1", "Sponsor1", "Driver1"));
        s.push(new Car(2, "Brand2", "Sponsor2", "Driver2"));
        s.push(new Car(3, "Brand3", "Sponsor3", "Driver3"));
        s.push(new Car(4, "Brand4", "Sponsor4", "Driver4"));
        s.push(new Car(5, "Brand5", "Sponsor5", "Driver5"));
        s.push(new Car(6, "Brand6", "Sponsor6", "Driver6"));

        System.out.println("\nDisplaying top car in the stack:");
        // Display the top Car
        System.out.println("Top car is: " + s.peek());

        System.out.println("\nPrinting all cars in the stack from newest to oldest:");
        // Print all Cars in the Stack
        s.print();
    }
}
