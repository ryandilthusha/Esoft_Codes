public class Main {
    public static void main(String[] args) {
        // Create an instance of CarManager
        CarManager carManager = new CarManager();

        // Register some cars
        try {
            carManager.registerCar(new Car(1, "Toyota", "Sponsor1", "Driver1"));
            carManager.registerCar(new Car(2, "Honda", "Sponsor2", "Driver2"));
            carManager.registerCar(new Car(3, "Ford", "Sponsor3", "Driver3"));
            carManager.registerCar(new Car(4, "Chevrolet", "Sponsor4", "Driver4"));
            carManager.registerCar(new Car(5, "Mercedes", "Sponsor5", "Driver5"));
            carManager.registerCar(new Car(6, "BMW", "Sponsor6", "Driver6"));
        } catch (IllegalArgumentException e) {
            System.out.println(e.getMessage());
        }

        // Try to register a car when the list is already full
        try {
            carManager.registerCar(new Car(7, "Ferrari", "Sponsor7", "Driver7"));
        } catch (IllegalArgumentException e) {
            System.out.println(e.getMessage());
        }

        // Print the list of cars
        System.out.println("\nInitial list of cars:");
        carManager.printCarList();

        // Search for a car that exists
        Car car = carManager.searchCar(3);
        if(car != null) {
            System.out.println("\nFound Car: " + car.getCarBrand());
        }

        // Search for a car that does not exist
        car = carManager.searchCar(7);
        if(car != null) {
            System.out.println("Found Car: " + car.getCarBrand());
        }

        // Delete a car that exists
        carManager.deleteCar(2);

        // Try to delete a car that does not exist
        carManager.deleteCar(7);

        // Print the list of cars again to check if the car was deleted
        System.out.println("\nList of cars after deletion:");
        carManager.printCarList();

        // Try to register a car with a number that already exists
        try {
            carManager.registerCar(new Car(1, "Audi", "Sponsor8", "Driver8"));
        } catch (IllegalArgumentException e) {
            System.out.println(e.getMessage());
        }
    }
}
