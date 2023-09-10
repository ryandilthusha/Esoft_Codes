// This class defines the Car object
class Car {
    private int number;
    private String brand;
    private String sponsor;
    private String driverDetails;

    // This is the Car constructor
    public Car(int number, String brand, String sponsor, String driverDetails) {
        this.number = number;
        this.brand = brand;
        this.sponsor = sponsor;
        this.driverDetails = driverDetails;
    }

    // This method returns a string representation of the Car
    @Override
    public String toString() {
        return "Car {" +
                "Number=" + number +
                ", Brand='" + brand + '\'' +
                ", Sponsor='" + sponsor + '\'' +
                ", Driver Details='" + driverDetails + '\'' +
                '}';
    }
}

// This class defines the Stack object
class Stack {
    private static final int MAX = 6; // The maximum size of the stack
    private int top; // The top of the stack
    private Car a[] = new Car[MAX]; // The array to store cars

    // This is the Stack constructor
    public Stack() {
        top = -1; // Initializing the top of the stack
    }

    // This method checks if the stack is empty
    public boolean isEmpty() {
        return (top < 0);
    }

    // This method adds a new Car to the top of the stack
    public boolean push(Car car) {
        if (top >= (MAX - 1)) {
            System.out.println("Stack Overflow, Car " + car.toString() + " cannot be added");
            return false;
        }
        else {
            a[++top] = car;
            System.out.println("Car " + car.toString() + " has been successfully added to the stack");
            return true;
        }
    }

    // This method removes the Car at the top of the stack
    public Car pop() {
        if (top < 0) {
            System.out.println("Stack Underflow, no car to remove");
            return null;
        }
        else {
            Car car = a[top--];
            System.out.println("Car " + car.toString() + " has been successfully removed from the stack");
            return car;
        }
    }

    // This method returns the Car at the top of the stack without removing it
    public Car peek() {
        if (top < 0) {
            System.out.println("Stack Underflow, no car in the stack");
            return null;
        }
        else {
            Car car = a[top];
            return car;
        }
    }

    // This method prints all the Cars in the stack from newest to oldest
    public void print() {
        if(isEmpty()){
            System.out.println("No car in the stack");
            return;
        }
        System.out.println("Cars in the stack from newest to oldest:");
        for(int i = top;i>-1;i--){
            System.out.println(a[i].toString());
        }
    }
}


