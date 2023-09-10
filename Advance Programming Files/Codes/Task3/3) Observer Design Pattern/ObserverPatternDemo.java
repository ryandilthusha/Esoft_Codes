import java.util.ArrayList;
import java.util.List;

// Observer interface that represents entities interested in appointment state changes
interface Observer {
    void update();
}

// ConcreteSubject class that gets observed for state changes
class Appointment {
    private String state;
    private List<Observer> observers = new ArrayList<>();

    // Attach an observer
    public void attach(Observer observer) {
        observers.add(observer);
    }

    // Detach an observer
    public void detach(Observer observer) {
        observers.remove(observer);
    }

    // Notify all observers about state changes
    public void notifyObservers() {
        for (Observer observer : observers) {
            observer.update();
        }
    }

    // Getter for state
    public String getState() {
        return state;
    }

    // Setter for state that triggers notification
    public void setState(String state) {
        this.state = state;
        notifyObservers();
    }
}

// ConcreteObserver class that gets notified of changes
class Patient implements Observer {
    private String name;
    private String address;
    private String nationalId;
    private String contactNumber;
    private Appointment appointment;

    public Patient(String name, String address, String nationalId, String contactNumber, Appointment appointment) {
        this.name = name;
        this.address = address;
        this.nationalId = nationalId;
        this.contactNumber = contactNumber;
        this.appointment = appointment;
        this.appointment.attach(this);  // Attach this patient as an observer to the appointment
    }

    @Override
    public void update() {
        System.out.println("Hello, " + name + "! Your appointment status has changed to: " + appointment.getState());
    }

    // Additional methods related to patient's details can be added here...
}

public class ObserverPatternDemo {
    public static void main(String[] args) {
        // Create an appointment
        Appointment appointment1 = new Appointment();

        // Create patients and attach them to the appointment
        Patient RyanWick = new Patient("Ryan Wickramaratne", "84/3 Negombo", "975635465V", "0764170647", appointment1);
        Patient JudithFernando = new Patient("Judith Fernando", "181/124 Lane", "974674563V", "0764170485", appointment1);

        // Simulate changing the state of the appointment, which should notify all attached patients
        appointment1.setState("Rescheduled to 3 PM");
    }
}
