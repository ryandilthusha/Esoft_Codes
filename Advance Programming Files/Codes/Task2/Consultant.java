// The Consultant class represents a specialized Doctor with post-graduate qualifications.
public class Consultant extends Doctor {

    // Attributes specific to a Consultant
    private String postGraduateQualification;
    private String universityCountry;
    private int numberOfYears;

    // Constructor
    public Consultant(String name, String address, String nationalId, String contactNumber, String dateOfBirth,
                      String experienceYears, Registration registration, String postGraduateQualification,
                      String universityCountry, int numberOfYears) {
        super(name, address, nationalId, contactNumber, dateOfBirth, experienceYears, registration);
        this.postGraduateQualification = postGraduateQualification;
        this.universityCountry = universityCountry;
        this.numberOfYears = numberOfYears;
    }

    // Getters and Setters

    // Returns the post-graduate qualification of the consultant
    public String getPostGraduateQualification() {
        return postGraduateQualification;
    }

    // Sets the post-graduate qualification of the consultant
    public void setPostGraduateQualification(String postGraduateQualification) {
        this.postGraduateQualification = postGraduateQualification;
    }

    // Returns the country of the university where the consultant studied
    public String getUniversityCountry() {
        return universityCountry;
    }

    // Sets the country of the university where the consultant studied
    public void setUniversityCountry(String universityCountry) {
        this.universityCountry = universityCountry;
    }

    // Returns the number of years since obtaining the post-graduate qualification
    public int getNumberOfYears() {
        return numberOfYears;
    }

    // Sets the number of years since obtaining the post-graduate qualification
    public void setNumberOfYears(int numberOfYears) {
        this.numberOfYears = numberOfYears;
    }
}
