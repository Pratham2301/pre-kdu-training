import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Scanner;
import java.util.Set;

class exercise2 {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        List<String> array = new ArrayList<String>();
        HashMap<String, Integer> hashmap = new HashMap<String, Integer>();
        Set<String> hashset = new HashSet<String>();

        int n = 10;

        for (int i = 0; i < n; i++) {
            System.out.print("Enter String " + (i+1) + " : ");
            String s = sc.next(); // string input

            array.add(s); // adding string in list

            hashset.add(s); // adding string in set

            if (hashmap.containsKey(s))
                hashmap.put(s, hashmap.get(s) + 1); // adding string in map
            else
                hashmap.put(s, 1); // setting map[s] for first time
        }

        // Printing List
        System.out.println("\nList Contains:");
        for (String i : array) {
            System.out.println(i);
        }

        // Printing Set
        System.out.println("\nSet Contains:");
        for (String i : hashset) {
            System.out.println(i);
        }

        // Printing HashMap
        System.out.println("\nFrequency of the words:");
        for (String i : hashmap.keySet()) {
            System.out.println("key: " + i + " value: " + hashmap.get(i));
        }

        sc.close();
    }
}