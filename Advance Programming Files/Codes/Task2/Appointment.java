import java.util.Date; // I've added the import java.util.Date; statement at the beginning of the class to utilize the Date class.

// The Appointment class represents a medical appointment that includes details about the appointment date,
// the doctor involved, the patient, and the appointment slot.
public class Appointment {

    // Attributes of an Appointment
    private Date appointmentDate;
    private Doctor doctor;            // Aggregation relationship
    private Patient patient;          // Aggregation relationship
    private AppointmentSlot appointmentSlot; // Aggregation relationship

    // Constructor
    public Appointment(Date appointmentDate, Doctor doctor, Patient patient, AppointmentSlot appointmentSlot) {
        this.appointmentDate = appointmentDate;
        this.doctor = doctor;
        this.patient = patient;
        this.appointmentSlot = appointmentSlot;
    }

    // Getters and Setters

    // Returns the date of the appointment
    public Date getAppointmentDate() {
        return appointmentDate;
    }

    // Sets the date of the appointment
    public void setAppointmentDate(Date appointmentDate) {
        this.appointmentDate = appointmentDate;
    }

    // Returns the doctor associated with the appointment
    public Doctor getDoctor() {
        return doctor;
    }

    // Sets the doctor for the appointment
    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }

    // Returns the patient associated with the appointment
    public Patient getPatient() {
        return patient;
    }

    // Sets the patient for the appointment
    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    // Returns the appointment slot details
    public AppointmentSlot getAppointmentSlot() {
        return appointmentSlot;
    }

    // Sets the appointment slot details
    public void setAppointmentSlot(AppointmentSlot appointmentSlot) {
        this.appointmentSlot = appointmentSlot;
    }
}

