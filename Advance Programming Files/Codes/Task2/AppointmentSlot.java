// The AppointmentSlot class represents a specific time slot for an appointment in the medical institution.
public class AppointmentSlot {

    // Attributes of an AppointmentSlot
    private String startTime;
    private String endTime;
    private Doctor doctor;           // Aggregation relationship: each slot can be associated with a specific doctor.
    private SurgeryRoom surgeryRoom; // Aggregation relationship: each slot can be associated with a specific surgery room.

    // Constructor
    public AppointmentSlot(String startTime, String endTime, Doctor doctor, SurgeryRoom surgeryRoom) {
        this.startTime = startTime;
        this.endTime = endTime;
        this.doctor = doctor;
        this.surgeryRoom = surgeryRoom;
    }

    // Getters and Setters

    // Returns the start time of the slot
    public String getStartTime() {
        return startTime;
    }

    // Sets the start time of the slot
    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    // Returns the end time of the slot
    public String getEndTime() {
        return endTime;
    }

    // Sets the end time of the slot
    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    // Returns the doctor associated with the slot
    public Doctor getDoctor() {
        return doctor;
    }

    // Sets the doctor for the slot
    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }

    // Returns the surgery room associated with the slot
    public SurgeryRoom getSurgeryRoom() {
        return surgeryRoom;
    }

    // Sets the surgery room for the slot
    public void setSurgeryRoom(SurgeryRoom surgeryRoom) {
        this.surgeryRoom = surgeryRoom;
    }
}
