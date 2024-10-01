public class Main {
    public static void main(String[] args) {
        Business aaaBus = new Business();
        Restaurant tacoRest = new Restaurant();

        // Setting Business attributes
        aaaBus.setName("AAA Business");
        aaaBus.setAddress("5 Race St");

        // Setting Restaurant attributes
        tacoRest.setName("Tom's Tacos");
        tacoRest.setAddress("600 Pleasure Ave");
        tacoRest.setRating(5);

        // Calling toString method explicitly
        System.out.println(aaaBus.toString());  // AAA Business -- 5 Race St

        // Calling toString method implicitly (happens when passing object to System.out.println)
        System.out.println(tacoRest);  // Tom's Tacos -- 600 Pleasure Ave, Rating: 5

        // Concatenating Business object with a String (toString() is called implicitly here)
        String somePlace = aaaBus + " #2";
        System.out.println(somePlace);  // AAA Business -- 5 Race St #2
    }
}
