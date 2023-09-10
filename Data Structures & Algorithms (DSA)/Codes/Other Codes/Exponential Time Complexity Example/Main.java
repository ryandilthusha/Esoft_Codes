import java.util.*;

class Main {
    static void powerSet(int[] arr, int index, List<Integer> currentSet) {
        if (index == arr.length) {
            System.out.println(currentSet);
            return;
        }

        // Including the current element
        currentSet.add(arr[index]);
        powerSet(arr, index + 1, currentSet);

        // Excluding the current element
        currentSet.remove(currentSet.size() - 1);
        powerSet(arr, index + 1, currentSet);
    }

    public static void main(String[] args) {
        int[] arr = {1, 2, 3};
        powerSet(arr, 0, new ArrayList<>());
    }
}
