public class Main {
    public static void main(String[] args) {
        TaskTracker chores = new TaskTracker();
        chores.addTask("Clean Room");
        chores.addTask("Load Dishwasher");
        chores.addTask("Unload Dishwasher");
        chores.addTask("Vacuum");
        chores.addTask("Mop");
        chores.markComplete("Clean Room");
        chores.markComplete("Load dishwasher");
        chores.listTasks();
    }
}
