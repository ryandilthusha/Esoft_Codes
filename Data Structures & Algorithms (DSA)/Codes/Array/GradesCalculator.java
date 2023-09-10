public class GradesCalculator {
    public static void main(String[] args) {
        // Create an array to store grades of 5 students
        int[] grades = new int[5];

        // Assign grades to students
        grades[0] = 85;
        grades[1] = 90;
        grades[2] = 88;
        grades[3] = 92;
        grades[4] = 86;

        // Calculate and display the average grade
        int sum = 0;
        for (int i = 0; i < grades.length; i++) {
            sum += grades[i];
        }

        float average = (float) sum / grades.length;
        System.out.println("The average grade is: " + average);

        // Update the grade for the first student and display the updated grades
        grades[0] = 95;
        System.out.println("Updated grades: ");
        for (int i = 0; i < grades.length; i++) {
            System.out.println("Grade of student " + (i+1) + " is: " + grades[i]);
        }
    }
}
