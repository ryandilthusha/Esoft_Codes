// The Registration class represents the registration details of a person in the medical institution.
public class Registration {

    // Attributes of a Registration
    private double registrationFee;

    // Constructor
    public Registration(double registrationFee) {
        this.registrationFee = registrationFee;
    }

    // Getters and Setters

    // Returns the registration fee
    public double getRegistrationFee() {
        return registrationFee;
    }

    // Sets the registration fee
    public void setRegistrationFee(double registrationFee) {
        this.registrationFee = registrationFee;
    }
}
