public class BubbleSortExample {
    // BubbleSort method
    public static void bubbleSort(int[] array) {
        int n = array.length; // Get the length of the array

        // Outer loop: Go through the array as many times as there are elements
        for (int i = 0; i < n-1; i++) {

            // Inner loop: Go through the array from the beginning to the end not yet sorted
            for (int j = 0; j < n-i-1; j++) {

                // If the current element is greater than the next one...
                if (array[j] > array[j+1]) {

                    // Swap array[j+1] and array[j] using a temporary variable
                    int temp = array[j];
                    array[j] = array[j+1];
                    array[j+1] = temp;
                }
            }
        }
    }

    // Method to print the elements of an array
    public static void printArray(int[] array) {
        int n = array.length; // Get the length of the array

        // Go through each element of the array
        for (int i = 0; i < n; ++i)

            // Print the current element followed by a space
            System.out.print(array[i] + " ");

        // Print a new line after all elements have been printed
        System.out.println();
    }

    // Main method
    public static void main(String[] args) {
        // Declare an array of car numbers
        int[] carNumbers = {45, 78, 23, 56, 89, 12};

        // Print the original array
        System.out.println("Original array:");
        printArray(carNumbers);

        // Sort the array using BubbleSort
        bubbleSort(carNumbers);

        // Print the sorted array
        System.out.println("Sorted array:");
        printArray(carNumbers);
    }
}
