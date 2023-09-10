// Define the Dentist class which will be associated with the DentalScanRoomManager
class Dentist {
    private String name;

    // Constructor
    public Dentist(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    // ... other attributes and methods relevant to the Dentist
}

// Singleton class for managing the Dental Scan Room
public class DentalScanRoomManager {

    // Static attribute that holds the single instance of the class
    private static DentalScanRoomManager instance = null;

    // Attribute for storing the dentist currently assigned to the scan room
    private Dentist assignedDentist = null;

    // Private constructor to prevent instantiation from other classes
    private DentalScanRoomManager() {
        // Nothing to initialize here for now
    }

    // Public method to provide access to the single instance of the class
    public static synchronized DentalScanRoomManager getInstance() {
        // If instance hasn't been initialized yet, create a new one
        if (instance == null) {
            instance = new DentalScanRoomManager();
        }

        // Return the single instance
        return instance;
    }

    // Assign a dentist to the scan room
    public void assignDentist(Dentist dentist) {
        this.assignedDentist = dentist;
        System.out.println(dentist.getName() + " has been assigned to the Dental Scan Room.");
    }

    // Release the dentist from the scan room (e.g. after finishing a scan)
    public void releaseDentist() {
        System.out.println(assignedDentist.getName() + " has been released from the Dental Scan Room.");
        this.assignedDentist = null;
    }

    // Get the dentist currently assigned to the scan room
    public Dentist getAssignedDentist() {
        return assignedDentist;
    }

    public static void main(String[] args) {
        // Sample usage
        DentalScanRoomManager manager = DentalScanRoomManager.getInstance();
        Dentist drJohn = new Dentist("Dr. Ryan");

        manager.assignDentist(drJohn);
        System.out.println("Currently assigned dentist: " + manager.getAssignedDentist().getName());

        manager.releaseDentist();
    }
}

