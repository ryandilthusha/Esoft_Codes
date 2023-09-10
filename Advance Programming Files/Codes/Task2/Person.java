// The Person class represents a generic individual with basic personal details.
public class Person {

    // Attributes
    private String name;
    private String address;
    private String nationalId;
    private String contactNumber;
    private String dateOfBirth;

    // Constructor
    public Person(String name, String address, String nationalId, String contactNumber, String dateOfBirth) {
        this.name = name;
        this.address = address;
        this.nationalId = nationalId;
        this.contactNumber = contactNumber;
        this.dateOfBirth = dateOfBirth;
    }

    // Getters and Setters

    // Returns the name of the person
    public String getName() {
        return name;
    }

    // Sets the name of the person
    public void setName(String name) {
        this.name = name;
    }

    // Returns the address of the person
    public String getAddress() {
        return address;
    }

    // Sets the address of the person
    public void setAddress(String address) {
        this.address = address;
    }

    // Returns the national ID of the person
    public String getNationalId() {
        return nationalId;
    }

    // Sets the national ID of the person
    public void setNationalId(String nationalId) {
        this.nationalId = nationalId;
    }

    // Returns the contact number of the person
    public String getContactNumber() {
        return contactNumber;
    }

    // Sets the contact number of the person
    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    // Returns the date of birth of the person
    public String getDateOfBirth() {
        return dateOfBirth;
    }

    // Sets the date of birth of the person
    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }
}
