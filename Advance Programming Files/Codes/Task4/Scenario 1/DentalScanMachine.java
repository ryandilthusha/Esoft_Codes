public class DentalScanMachine {

    // The sole instance of the class, initialized as null initially
    private static DentalScanMachine instance = null;

    // Attributes of the DentalScanMachine
    private String serialNumber;
    private String make;
    private String countryOfOrigin;
    private double cost;

    // Private constructor to ensure no other instance can be created
    private DentalScanMachine() {}

    // Public method to get the single instance of DentalScanMachine
    public static DentalScanMachine getInstance() {
        // If instance hasn't been created, create it
        if(instance == null) {
            instance = new DentalScanMachine();
        }
        return instance;
    }

    // Method to set the details for the DentalScanMachine
    public void setDetails(String serialNumber, String make, String countryOfOrigin, double cost) {
        this.serialNumber = serialNumber;
        this.make = make;
        this.countryOfOrigin = countryOfOrigin;
        this.cost = cost;
    }

    // A simple method to display the details of the machine
    public void displayDetails() {
        System.out.println("Dental Scan Machine Details:");
        System.out.println("Serial Number: " + serialNumber);
        System.out.println("Make: " + make);
        System.out.println("Country of Origin: " + countryOfOrigin);
        System.out.println("Cost: " + cost + " LKR");
    }

    public static void main(String[] args) {
        // Get the instance of DentalScanMachine
        DentalScanMachine machine = DentalScanMachine.getInstance();

        // Set the details for the machine
        machine.setDetails("DSM12345", "Toshiba", "Japan", 10000000.0);

        // Display the details
        machine.displayDetails();
    }
}
