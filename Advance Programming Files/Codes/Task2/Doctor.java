// The Doctor class represents a medical professional with specific experience and registration details.
public class Doctor extends Person {

    // Attributes specific to a Doctor
    private String experienceYears;
    private Registration registration; // Composition relationship

    // Constructor
    public Doctor(String name, String address, String nationalId, String contactNumber, String dateOfBirth,
                  String experienceYears, Registration registration) {
        super(name, address, nationalId, contactNumber, dateOfBirth);
        this.experienceYears = experienceYears;
        this.registration = registration;
    }

    // Getters and Setters

    // Returns the number of years of experience of the doctor
    public String getExperienceYears() {
        return experienceYears;
    }

    // Sets the number of years of experience of the doctor
    public void setExperienceYears(String experienceYears) {
        this.experienceYears = experienceYears;
    }

    // Returns the registration details of the doctor
    public Registration getRegistration() {
        return registration;
    }

    // Sets the registration details of the doctor
    public void setRegistration(Registration registration) {
        this.registration = registration;
    }
}
