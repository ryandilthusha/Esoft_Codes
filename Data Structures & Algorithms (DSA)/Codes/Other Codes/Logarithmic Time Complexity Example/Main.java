public class Main {
    public static void main(String[] args) {
        int[] array = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        int target = 6;
        System.out.println(binarySearch(array, target, 0, array.length - 1));
    }

    public static int binarySearch(int[] array, int target, int start, int end) {
        if (end >= start) {
            int mid = start + (end - start) / 2;
            if (array[mid] == target)
                return mid;
            if (array[mid] > target)
                return binarySearch(array, target, start, mid - 1);
            return binarySearch(array, target, mid + 1, end);
        }
        return -1;
    }
}
