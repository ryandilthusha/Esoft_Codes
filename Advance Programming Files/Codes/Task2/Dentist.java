// The Dentist class represents a medical professional specialized in dentistry.
public class Dentist extends Doctor {

    // Constructor
    public Dentist(String name, String address, String nationalId, String contactNumber, String dateOfBirth,
                   String experienceYears, Registration registration) {
        super(name, address, nationalId, contactNumber, dateOfBirth, experienceYears, registration);
    }

    // As per the UML, there are no additional attributes or methods specific to Dentist, so it directly inherits from Doctor.
}
