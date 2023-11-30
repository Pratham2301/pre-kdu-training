import java.io.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Scanner;

class exercise3 {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        try {

            FileReader fr = new FileReader("./file.csv");
            BufferedReader br = new BufferedReader(fr);

            String line = "";
            String[] array;

            HashMap<String, Integer> hashmap = new HashMap<String, Integer>();

            while ((line = br.readLine()) != null) {

                array = line.split(",");

                for (String i : array) {

                    if (hashmap.containsKey(i))
                        hashmap.put(i, hashmap.get(i) + 1); // adding string in map
                    else
                        hashmap.put(i, 1); // setting map[s] for first time

                }
            }

            // creating list
            List<String> list = new ArrayList<String>();

            for (String i : hashmap.keySet()) {
                list.add(i);
            }

            // sorting list using lambda
            Collections.sort(list , (s1 , s2)-> hashmap.get(s1) - hashmap.get(s2));

            // reversing to get descending order
            Collections.reverse(list);

            for(int i=0;i<3;i++){
                System.out.println(list.get(i));
            }


            br.close();

        } catch (IOException e) {
            e.printStackTrace();
        }

        sc.close();
    }
}