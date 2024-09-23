// Superclass
class Vehicle {
    private String brand;
    private int year;

    public Vehicle(String brand, int year) {
        this.brand = brand;
        this.year = year;
    }

    public void start() {
        System.out.println("Starting the vehicle");
    }

    public void stop() {
        System.out.println("Stopping the vehicle");
    }

    public String getBrand() {
        return brand;
    }

    public int getYear() {
        return year;
    }
}

// Subclass
class Car extends Vehicle {
    private int numberOfDoors;

    public Car(String brand, int year, int numberOfDoors) {
        super(brand, year); // Call the constructor of the superclass
        this.numberOfDoors = numberOfDoors;
    }

    // Override the start method from the superclass
    @Override
    public void start() {
        System.out.println("Starting the car");
    }

    public int getNumberOfDoors() {
        return numberOfDoors;
    }
}

public class Main {
    public static void main(String[] args) {
        // Create an instance of the subclass Car
        Car myCar = new Car("Toyota", 2022, 4);

        // Access methods and fields from the superclass
        System.out.println("Brand: " + myCar.getBrand());
        System.out.println("Year: " + myCar.getYear());

        // Access methods and fields from the subclass
        System.out.println("Number of Doors: " + myCar.getNumberOfDoors());

        // Call the overridden start method
        myCar.start();

        // Call the stop method inherited from the superclass
        myCar.stop();
    }
}
