// The Staff class represents a general staff member in the medical institution.
public class Staff extends Person {

    // Attributes of a Staff member
    private String position;

    // Constructor
    public Staff(String name, String address, String nationalId, String contactNumber,
                 String dateOfBirth, String position) {
        super(name, address, nationalId, contactNumber, dateOfBirth);
        this.position = position;
    }

    // Getters and Setters

    // Returns the position of the staff member
    public String getPosition() {
        return position;
    }

    // Sets the position of the staff member
    public void setPosition(String position) {
        this.position = position;
    }
}

