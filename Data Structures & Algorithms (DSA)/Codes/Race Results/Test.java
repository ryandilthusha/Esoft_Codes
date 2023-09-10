// Import necessary classes
import java.util.LinkedList;
import java.util.Comparator;

// Define Car class with appropriate properties and methods
class Car {
    int id;
    String make;
    String driver;
    double roundTime;

    // Car class constructor
    public Car(int id, String make, String driver) {
        this.id = id;
        this.make = make;
        this.driver = driver;
    }

    // toString method to print details of car in a readable format
    @Override
    public String toString() {
        return "Car ID: " + id +
                ", Make: " + make +
                ", Driver: " + driver +
                ", Round Time: " + roundTime;
    }
}

// Define the Queue class to implement a queue of Cars
class CarQueue {
    LinkedList<Car> cars = new LinkedList<>();

    // Method to enqueue (add) a car to the queue
    public void enqueue(Car car) {
        // The add() method appends the element at the end of the list.
        cars.add(car);
    }

    // Method to dequeue (remove) a car from the queue
    public Car dequeue() throws Exception {
        // If the queue is empty, throw an exception
        if (isEmpty()) {
            throw new Exception("Cannot dequeue. The queue is empty!");
        }

        // Otherwise, remove the last element in the list, simulating a queue's behavior.
        return cars.removeLast();
    }

    // Method to check if the queue is empty
    public boolean isEmpty() {
        return cars.isEmpty();
    }

    // Method to print the cars in the queue
    public void printQueue() {
        // For each car in the cars list, print the car.
        for (Car car : cars) {
            System.out.println(car);
        }
    }
}

// Main class
public class Test {
    public static void main(String[] args) {
        // Array of cars participating in the race
        Car[] carArray = {new Car(1, "Toyota", "Driver1"),
                new Car(2, "Honda", "Driver2"),
                new Car(3, "Ford", "Driver3"),
                new Car(4, "Chevrolet", "Driver4"),
                new Car(5, "Subaru", "Driver5"),
                new Car(6, "Ferrari", "Driver6")};

        // Create a new CarQueue.
        CarQueue carQueue = new CarQueue();

        // Enqueue the cars into the carQueue
        for (Car car : carArray) {
            // For each car in the carArray, enqueue (add) the car to the queue.
            carQueue.enqueue(car);
        }

        // Begin the 3 rounds
        for (int i = 1; i <= 3; i++) {
            System.out.println("\n\nStarting Round " + i + "...\n");

            // Assign a random time between 30 to 40 seconds to each car for the round
            for (Car car : carQueue.cars) {
                // The roundTime is assigned a random value between 30 and 40.
                car.roundTime = Math.random() * 10 + 30;
            }

            // Sort the cars based on round time (ascending order)
            // The Java sort method is used, with a lambda function specifying that the sorting is based on the roundTime of each car.
            carQueue.cars.sort(Comparator.comparingDouble(car -> car.roundTime));

            // Print the cars in the queue (i.e., the cars in the order of their round times)
            System.out.println("Cars in the order of their round times:");
            carQueue.printQueue();

            // Print the top 3 cars (i.e., the cars with the least round times)
            System.out.println("\nTop 3 Cars:");
            // Get the cars at the 0, 1, and 2 indexes of the sorted list. These cars have the least round times.
            try {
                System.out.println("1st: " + carQueue.cars.get(0));
                System.out.println("2nd: " + carQueue.cars.get(1));
                System.out.println("3rd: " + carQueue.cars.get(2));
            } catch (Exception e) {
                System.out.println("There are less than 3 cars left in the race!");
            }

            // Print the eliminated car (i.e., the car with the maximum round time)
            if (!carQueue.isEmpty()) {
                System.out.println("\nEliminated Car: " + carQueue.cars.getLast());
            }

            // Dequeue the eliminated car (i.e., remove the car with the maximum round time from the queue)
            try {
                carQueue.dequeue();
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }

        // Print the winners of the race
        System.out.println("\n\nWinners of the Race:");
        try {
            System.out.println("1st: " + carQueue.cars.get(0));
            System.out.println("2nd: " + carQueue.cars.get(1));
            System.out.println("3rd: " + carQueue.cars.get(2));
        } catch (Exception e) {
            System.out.println("There are less than 3 cars left in the race!");
        }
    }
}
