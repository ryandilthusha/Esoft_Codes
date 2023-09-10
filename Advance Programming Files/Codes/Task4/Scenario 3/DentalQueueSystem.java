import java.util.LinkedList;

// Define the Patient class to hold patient details
class Patient {
    private String name;
    public Patient(String name) {
        this.name = name;
    }
    public String getName() {
        return this.name;
    }
    @Override
    public String toString() {
        return name;
    }
}

// Interface for the Patient Queue operations we expect
interface PatientQueueInterface {
    void enqueue(Patient patient);
    Patient dequeue();
    Patient search(String patientName);
    void showAll();
}

// Basic queue class using library's LinkedList (simulating the library-provided Queue)
class LibraryQueue {
    LinkedList<Patient> queue = new LinkedList<>();

    public void enqueue(Patient patient) {
        queue.addLast(patient);
    }

    public Patient dequeue() {
        return queue.pollFirst();
    }
}

// Adapter class which makes our LibraryQueue compatible with PatientQueueInterface
class PatientQueueAdapter implements PatientQueueInterface {
    private LibraryQueue queue;

    public PatientQueueAdapter(LibraryQueue queue) {
        this.queue = queue;
    }

    @Override
    public void enqueue(Patient patient) {
        queue.enqueue(patient);
    }

    @Override
    public Patient dequeue() {
        return queue.dequeue();
    }

    // Search patient by name
    @Override
    public Patient search(String patientName) {
        for (Patient patient : queue.queue) {
            if (patient.getName().equals(patientName)) {
                return patient;
            }
        }
        return null;
    }

    // Display all patients
    @Override
    public void showAll() {
        for (Patient patient : queue.queue) {
            System.out.println(patient);
        }
    }
}

public class DentalQueueSystem {
    public static void main(String[] args) {
        LibraryQueue libraryQueue = new LibraryQueue();
        PatientQueueAdapter patientQueue = new PatientQueueAdapter(libraryQueue);

        // Testing the system
        patientQueue.enqueue(new Patient("Ryan"));
        patientQueue.enqueue(new Patient("Judith"));
        patientQueue.enqueue(new Patient("Steve"));

        System.out.println("All patients in queue:");
        patientQueue.showAll();

        System.out.println("\nSearching for Judith:");
        Patient searchedPatient = patientQueue.search("Judith");
        if (searchedPatient != null) {
            System.out.println("Found: " + searchedPatient);
        } else {
            System.out.println("Not found");
        }

        System.out.println("\nDequeuing a patient:");
        System.out.println(patientQueue.dequeue());

        System.out.println("\nAll patients after dequeue operation:");
        patientQueue.showAll();
    }
}

