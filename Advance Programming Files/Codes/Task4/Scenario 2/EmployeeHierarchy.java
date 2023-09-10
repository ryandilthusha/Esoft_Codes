import java.util.ArrayList;
import java.util.List;

// The Composite component: Employee class
class Employee {
    private String empId;
    private String name;
    private String position;
    private int salary;
    private List<Employee> subordinates; // list of employees under this employee

    // Constructor to initialize employee details
    public Employee(String empId, String name, String position, int salary) {
        this.empId = empId;
        this.name = name;
        this.position = position;
        this.salary = salary;
        this.subordinates = new ArrayList<>();
    }

    // Add an employee to subordinates list
    public void add(Employee employee) {
        subordinates.add(employee);
    }

    // Remove an employee from subordinates list
    public void remove(Employee employee) {
        subordinates.remove(employee);
    }

    // Get subordinates of this employee
    public List<Employee> getSubordinates() {
        return subordinates;
    }

    // Display the employee's details and hierarchy
    public void displayEmployeeDetails(int level) {
        // Print tabs for the current level to show hierarchy
        for (int i = 0; i < level; i++) {
            System.out.print("\t");
        }

        // Display current employee's details
        System.out.println("Emp Id: " + empId + ", Name: " + name + ", Position: " + position + ", Salary: " + salary + " LKR");

        // Display details of each subordinate recursively
        for (Employee e : subordinates) {
            e.displayEmployeeDetails(level + 1);
        }
    }
}

// Main class to test the hierarchy
public class EmployeeHierarchy {
    public static void main(String[] args) {
        // Create employees
        Employee anton = new Employee("A001", "Anton", "Director", 1000000);
        Employee supuni = new Employee("A003", "Supuni", "Dentist", 600000);
        Employee madhavi = new Employee("A004", "Madhavi", "Dentist", 600000);
        Employee chamod = new Employee("A002", "Chamod", "Dentist", 600000);
        Employee piyal = new Employee("A005", "Piyal", "Nurse", 200000);
        Employee kamal = new Employee("A006", "Kamal", "Nurse", 200000);
        Employee kapila = new Employee("A007", "Kapila", "Nurse", 200000);

        // Construct hierarchy as per the given scenario
        anton.add(supuni);
        anton.add(madhavi);

        supuni.add(chamod);

        chamod.add(piyal);
        chamod.add(kamal);
        chamod.add(kapila);

        // Display hierarchy starting from the top level
        anton.displayEmployeeDetails(0);
    }
}

