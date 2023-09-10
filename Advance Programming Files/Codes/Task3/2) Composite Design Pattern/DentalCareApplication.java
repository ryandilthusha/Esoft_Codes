
import java.util.ArrayList;
import java.util.List;

// The abstract component class for dental treatments
abstract class DentalTreatment {
    protected String name;
    protected double price;

    public DentalTreatment(String name, double price) {
        this.name = name;
        this.price = price;
    }

    // This method is used to perform the treatment. Since it's abstract, subclasses have to provide their own implementations
    public abstract void performTreatment();

    // These methods might not be meaningful for simple treatments, so we provide default implementations
    public void addTreatment(DentalTreatment treatment) {
        throw new UnsupportedOperationException();
    }

    public void removeTreatment(DentalTreatment treatment) {
        throw new UnsupportedOperationException();
    }

    public DentalTreatment getTreatment(int index) {
        throw new UnsupportedOperationException();
    }

    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }
}

// Represents individual treatments that can't have other treatments nested inside them
class SimpleTreatment extends DentalTreatment {

    public SimpleTreatment(String name, double price) {
        super(name, price);
    }

    @Override
    public void performTreatment() {
        System.out.println("Performing the " + name + " treatment. Cost: " + price);
    }
}

// Represents composite treatments that can contain other treatments
class CompositeTreatment extends DentalTreatment {
    private List<DentalTreatment> treatments = new ArrayList<>();

    public CompositeTreatment(String name) {
        super(name, 0); // Initial price is set to 0, it will be calculated based on the contained treatments
    }

    @Override
    public void performTreatment() {
        System.out.println("Starting the " + name + " treatment.");
        for(DentalTreatment treatment : treatments) {
            treatment.performTreatment();
        }
        System.out.println("Finished the " + name + " treatment. Total Cost: " + getPrice());
    }

    // Add a treatment to this composite
    @Override
    public void addTreatment(DentalTreatment treatment) {
        treatments.add(treatment);
        price += treatment.getPrice(); // Update the total price when adding a treatment
    }

    // Remove a treatment from this composite
    @Override
    public void removeTreatment(DentalTreatment treatment) {
        treatments.remove(treatment);
        price -= treatment.getPrice(); // Update the total price when removing a treatment
    }

    @Override
    public DentalTreatment getTreatment(int index) {
        return treatments.get(index);
    }
}

public class DentalCareApplication {
    public static void main(String[] args) {
        // Creating some basic treatments
        SimpleTreatment toothExtraction = new SimpleTreatment("Tooth Extraction", 50.0);
        SimpleTreatment boneGrafting = new SimpleTreatment("Bone Grafting", 100.0);
        SimpleTreatment implantPlacement = new SimpleTreatment("Implant Placement", 150.0);

        // Creating a composite treatment for dental implants
        CompositeTreatment dentalImplant = new CompositeTreatment("Dental Implant");
        dentalImplant.addTreatment(toothExtraction);
        dentalImplant.addTreatment(boneGrafting);
        dentalImplant.addTreatment(implantPlacement);

        // Performing the treatments
        toothExtraction.performTreatment();
        System.out.println("------------------------------");
        dentalImplant.performTreatment();
    }
}
