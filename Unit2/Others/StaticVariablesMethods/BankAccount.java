public class BankAccount {
    // Instance variables
    private double balance;
    private int accountNumber;
    
    // Static variable to keep track of the last assigned account number
    private static int lastAssignedNumber = 1000;
    
    // Static variable to keep track of the total number of accounts
    private static int totalAccounts = 0;

    // Constructor that initializes balance and assigns an account number
    public BankAccount(double initialBalance) {
        this.balance = initialBalance;
        lastAssignedNumber++;
        this.accountNumber = lastAssignedNumber;
        totalAccounts++;
    }

    // Instance method to deposit money into the account
    public void deposit(double amount) {
        balance += amount;
    }

    // Instance method to withdraw money from the account
    public boolean withdraw(double amount) {
        if (amount <= balance) {
            balance -= amount;
            return true;
        } else {
            return false;
        }
    }

    // Instance method to get the current balance
    public double getBalance() {
        return balance;
    }

    // Static method to get the total number of accounts
    public static int getTotalAccounts() {
        return totalAccounts;
    }

    // Static method to reset account numbering (e.g., for testing)
    public static void resetAccountNumbering() {
        lastAssignedNumber = 1000;
    }

    // Method to get the account number
    public int getAccountNumber() {
        return accountNumber;
    }

    public static void main(String[] args) {
        
        System.out.println("The total accounts we have now is: " + BankAccount.getTotalAccounts());

        // Creating multiple accounts
        BankAccount account1 = new BankAccount(500.0);
        BankAccount account2 = new BankAccount(1500.0);

        System.out.println("The total accounts we have now is: " + BankAccount.getTotalAccounts());
        System.out.println("The total accounts we have now is: " + account1.getTotalAccounts());
        System.out.println("The total accounts we have now is: " + account2.getTotalAccounts());

        // // Displaying account numbers and balances
        // System.out.println("Account 1 Number: " + account1.getAccountNumber());
        // System.out.println("Account 1 Balance: $" + account1.getBalance());

        // System.out.println("Account 2 Number: " + account2.getAccountNumber());
        // System.out.println("Account 2 Balance: $" + account2.getBalance());

        // // Checking total number of accounts (using static method)
        // System.out.println("Total accounts: " + BankAccount.getTotalAccounts());

        // // Resetting account numbering
        // BankAccount.resetAccountNumbering();

        // // Creating a new account after reset
        // BankAccount account3 = new BankAccount(2000.0);
        // System.out.println("Account 3 Number after reset: " + account3.getAccountNumber());
    }
}
