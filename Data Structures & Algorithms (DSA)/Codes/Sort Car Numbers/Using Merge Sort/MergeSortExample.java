public class MergeSortExample {
    // Merge Sort function
    public static void mergeSort(int[] array, int left, int right) {
        if (right <= left) return;
        int mid = (left+right)/2;
        mergeSort(array, left, mid);
        mergeSort(array, mid+1, right);
        merge(array, left, mid, right);
    }

    // Merge function to merge two halves of a subarray
    static void merge(int[] array, int left, int mid, int right) {
        // Find sizes of two subarrays to be merged
        int n1 = mid - left + 1;
        int n2 = right - mid;

        /* Create temporary arrays */
        int[] leftArray = new int[n1];
        int[] rightArray = new int[n2];

        /*Copy data to temporary arrays*/
        for (int i=0; i<n1; ++i)
            leftArray[i] = array[left + i];
        for (int j=0; j<n2; ++j)
            rightArray[j] = array[mid + 1+ j];

        /* Merge the temp arrays */

        // Initial indexes of first and second subarrays
        int i = 0, j = 0;

        // Initial index of merged subarray array
        int k = left;
        while (i < n1 && j < n2) {
            if (leftArray[i] <= rightArray[j]) {
                array[k] = leftArray[i];
                i++;
            }
            else {
                array[k] = rightArray[j];
                j++;
            }
            k++;
        }

        /* Copy remaining elements of leftArray[] if any */
        while (i < n1) {
            array[k] = leftArray[i];
            i++;
            k++;
        }

        /* Copy remaining elements of rightArray[] if any */
        while (j < n2) {
            array[k] = rightArray[j];
            j++;
            k++;
        }
    }

    // Method to print the elements of an array
    public static void printArray(int[] array) {
        int n = array.length;
        for (int i = 0; i < n; ++i)
            System.out.print(array[i] + " ");
        System.out.println();
    }

    // Main method
    public static void main(String[] args) {
        int[] carNumbers = {45, 78, 23, 56, 89, 12};
        System.out.println("Original array:");
        printArray(carNumbers);
        mergeSort(carNumbers, 0, carNumbers.length-1);
        System.out.println("Sorted array:");
        printArray(carNumbers);
    }
}
