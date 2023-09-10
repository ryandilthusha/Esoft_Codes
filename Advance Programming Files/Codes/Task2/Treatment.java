// The Treatment class represents medical treatment details, including a description and cost.
public class Treatment {

    // Attributes of a Treatment
    private String description;
    private double cost;

    // Constructor
    public Treatment(String description, double cost) {
        this.description = description;
        this.cost = cost;
    }

    // Getters and Setters

    // Returns the description of the treatment
    public String getDescription() {
        return description;
    }

    // Sets the description of the treatment
    public void setDescription(String description) {
        this.description = description;
    }

    // Returns the cost of the treatment
    public double getCost() {
        return cost;
    }

    // Sets the cost of the treatment
    public void setCost(double cost) {
        this.cost = cost;
    }
}

