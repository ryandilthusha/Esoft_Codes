import java.util.Date; // I've added the import java.util.Date; statement at the beginning of the class to utilize the Date class.

// The Payment class represents details of a payment made by a patient, including the amount and date.
public class Payment {

    // Attributes of a Payment
    private double amount;
    private Date paymentDate;

    // Constructor
    public Payment(double amount, Date paymentDate) {
        this.amount = amount;
        this.paymentDate = paymentDate;
    }

    // Getters and Setters

    // Returns the amount of the payment
    public double getAmount() {
        return amount;
    }

    // Sets the amount of the payment
    public void setAmount(double amount) {
        this.amount = amount;
    }

    // Returns the date of the payment
    public Date getPaymentDate() {
        return paymentDate;
    }

    // Sets the date of the payment
    public void setPaymentDate(Date paymentDate) {
        this.paymentDate = paymentDate;
    }
}
