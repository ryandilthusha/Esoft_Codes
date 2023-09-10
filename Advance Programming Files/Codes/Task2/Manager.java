// The Manager class represents a manager in the medical institution, with an added functionality of managing staff.
public class Manager extends Staff {

    // Attributes of a Manager
    private Staff staff;  // Composition relationship: a manager manages a specific staff member.

    // Constructor
    public Manager(String name, String address, String nationalId, String contactNumber,
                   String dateOfBirth, String position, Staff staff) {
        super(name, address, nationalId, contactNumber, dateOfBirth, position);
        this.staff = staff;
    }

    // Getters and Setters

    // Returns the staff member managed by the manager
    public Staff getStaff() {
        return staff;
    }

    // Assigns a staff member for the manager to manage
    public void setStaff(Staff staff) {
        this.staff = staff;
    }
}
