import java.util.Scanner;

class kdu1{
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        String s1, s2;

        System.err.println("Enter first string:");
        s1 = sc.nextLine();

        System.err.println("Enter second string:");
        s2 = sc.nextLine();

        // part 1: Print the length of the first string
        System.err.println("The length of the first string is " + s1.length());


        // part 2: Print the length of the second string
        System.err.println("The length of the second string is " + s2.length());


        // part 3: Print if the length matches or not
        if(s1.length() == s2.length()){
            System.err.println("The length of the two strings are the same");            
        }
        else{
            System.err.println("The length of the two strings is not the same");
        }


        // part 4: Print if the two strings are the same
        if(s1.equals(s2)){
            System.err.println("Two strings are equal");            
        }
        else{
            System.err.println("Two strings are not equal");
        }

        sc.close();
        
    }
}