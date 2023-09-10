// The Patient class represents a specific type of person who is either registered or not in a hospital system.
public class Patient extends Person {

    // Attributes specific to a Patient
    private boolean isRegistered;
    private Registration registration; // Composition relationship

    // Constructor
    public Patient(String name, String address, String nationalId, String contactNumber, String dateOfBirth,
                   boolean isRegistered, Registration registration) {
        super(name, address, nationalId, contactNumber, dateOfBirth);
        this.isRegistered = isRegistered;
        this.registration = registration;
    }

    // Getters and Setters

    // Returns if the patient is registered
    public boolean getIsRegistered() {
        return isRegistered;
    }

    // Sets the registration status of the patient
    public void setIsRegistered(boolean isRegistered) {
        this.isRegistered = isRegistered;
    }

    // Returns the registration details of the patient
    public Registration getRegistration() {
        return registration;
    }

    // Sets the registration details of the patient
    public void setRegistration(Registration registration) {
        this.registration = registration;
    }
}
