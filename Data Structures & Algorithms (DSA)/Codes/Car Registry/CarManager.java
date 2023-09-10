// This is our CarManager class.
// It manages operations related to cars.
public class CarManager {
    // Maximum number of cars
    private static final int MAX_CARS = 6;
    // Array to hold the cars
    private Car[] listOfCars = new Car[MAX_CARS];
    // Number of cars currently registered
    private int totalCars = 0;

    // Method to add a new car to the list
    public void registerCar(Car newCar) {
        if(totalCars < MAX_CARS) { // Check if there is room for a new car
            // Check if a car with the same number already exists
            for(int i = 0; i < totalCars; i++) {
                if(listOfCars[i].getCarNumber() == newCar.getCarNumber()) {
                    System.out.println("Registration failed. A car with the same number is already registered.");
                    return;
                }
            }

            listOfCars[totalCars] = newCar; // Add new car to the next available position
            totalCars++; // Increment the count of cars
            System.out.println("The car has been successfully registered.");
        } else {
            System.out.println("Registration failed. The maximum number of cars have been registered.");
        }
    }

    // Method to delete a car from the list
    public void deleteCar(int carNumber) {
        for(int i = 0; i < totalCars; i++) {
            // If the car is found
            if(listOfCars[i].getCarNumber() == carNumber) {
                // Move the cars in the list to fill the gap
                for(int j = i; j < totalCars - 1; j++) {
                    listOfCars[j] = listOfCars[j+1];
                }
                // Decrease the count of total cars
                totalCars--;
                System.out.println("The car has been successfully deleted.");
                return;
            }
        }
        // If the car is not found
        System.out.println("Deletion failed. The specified car does not exist.");
    }

    // Method to search for a car by its number
    public Car searchCar(int carNumber) {
        // Search for the car in the list
        for(int i = 0; i < totalCars; i++) {
            // If car is found, return the car object
            if(listOfCars[i].getCarNumber() == carNumber) {
                return listOfCars[i];
            }
        }
        // If car is not found, print a message and return null
        System.out.println("Search failed. The specified car was not found.");
        return null;
    }

    // Method to print the list of cars
    public void printCarList() {
        for(int i = 0; i < totalCars; i++) {
            System.out.println("Car Number: " + listOfCars[i].getCarNumber()
                    + ", Brand: " + listOfCars[i].getCarBrand()
                    + ", Sponsor: " + listOfCars[i].getCarSponsor()
                    + ", Driver: " + listOfCars[i].getCarDriver());
        }
    }
}
