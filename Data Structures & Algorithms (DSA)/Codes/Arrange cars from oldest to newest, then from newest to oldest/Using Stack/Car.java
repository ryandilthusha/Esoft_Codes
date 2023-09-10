// This class defines the Car object
class Car {
    int number;
    String brand;
    String sponsor;
    String driverDetails;

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
    static final int MAX = 6; // The maximum size of the stack
    int top; // The top of the stack
    Car a[] = new Car[MAX]; // The array to store cars

    // This is the Stack constructor
    Stack() {
        top = -1; // Initializing the top of the stack
    }

    // This method checks if the stack is empty
    boolean isEmpty() {
        return (top < 0);
    }

    // This method adds a new Car to the top of the stack
    boolean push(Car car) {
        if (top >= (MAX - 1)) {
            System.out.println("Stack Overflow, Car " + car.number + " cannot be added");
            return false;
        }
        else {
            a[++top] = car;
            System.out.println("Car " + car.number + " has been successfully added to the stack");
            return true;
        }
    }

    // This method removes the Car at the top of the stack
    Car pop() {
        if (top < 0) {
            System.out.println("Stack Underflow, no car to remove");
            return null;
        }
        else {
            Car car = a[top--];
            System.out.println("Car " + car.number + " has been successfully removed from the stack");
            return car;
        }
    }

    // This method returns the Car at the top of the stack without removing it
    Car peek() {
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
    void print() {
        if(isEmpty()){
            System.out.println("No car in the stack");
            return;
        }
        System.out.println("Cars in the stack from newest to oldest:");
        for(int i = top;i>-1;i--){
            System.out.println(a[i]);
        }
    }
}

