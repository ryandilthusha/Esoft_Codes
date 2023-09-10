// This is our Car class.
// Each Car has a unique number, brand, sponsor, and driver.
public class Car {
    // Car attributes
    private int carNumber;
    private String carBrand;
    private String carSponsor;
    private String carDriver;

    // This is the constructor for Car class.
    // It is called when we create a new Car object.
    public Car(int number, String brand, String sponsor, String driver) {
        // Error checking for inputs
        if(number <= 0) {
            throw new IllegalArgumentException("Car number must be greater than 0.");
        }
        if(brand == null || brand.isEmpty()) {
            throw new IllegalArgumentException("Car brand must not be empty.");
        }
        if(sponsor == null || sponsor.isEmpty()) {
            throw new IllegalArgumentException("Car sponsor must not be empty.");
        }
        if(driver == null || driver.isEmpty()) {
            throw new IllegalArgumentException("Car driver must not be empty.");
        }

        // Assign values to the car attributes
        this.carNumber = number;
        this.carBrand = brand;
        this.carSponsor = sponsor;
        this.carDriver = driver;
    }

    // These are getter methods, used to access private properties of the class
    public int getCarNumber() {
        return carNumber;
    }

    public String getCarBrand() {
        return carBrand;
    }

    public String getCarSponsor() {
        return carSponsor;
    }

    public String getCarDriver() {
        return carDriver;
    }
}

