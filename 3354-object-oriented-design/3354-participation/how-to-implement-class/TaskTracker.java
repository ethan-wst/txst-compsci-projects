/**
 * Step 1 (Responsibilities): add task, mark complete, list task
 * Step 2 (Public Interface): Constructors:
 *                                  public taskTracker()
 *                            Mutators:
 *                                  public void addTask(String taskName, int deadline)
 *                                  public void markComplete(String taskName)
 *                            Accessors:
 *                                  public void listTasks();
 * Step 3 (Document): Completed below
 * Step 4 (Instance Variables): Every taskTracker object must have a ArrayList<Task>
 * Step 5 (Implement): Completed Below                              
 */

import java.util.ArrayList;

/**
 * A taskTracker is a list of Task objects that can be changed by adding a task
 * or marking a task as complete.
 */
class TaskTracker {
    // List of Task objects
    private ArrayList<Task> tasks;

    // Constructs a new taskTracker object
    public TaskTracker() {
        tasks = new ArrayList<>();
    }
    // Adds a new Task to the taskTracker list
    public void addTask(String taskName) {
        Task newTask = new Task(taskName);
        tasks.add(newTask);
    }

    // Searches for Task object by name and marks complete if found
    public void markComplete(String taskName) {
        boolean found = false;
        for (Task task: tasks) {
            if ((task.getName()).equalsIgnoreCase(taskName)) {
                task.markComplete();
                found = true;
                break;
            }
        }
        if (!found) System.out.println("Task not found.");
    }

    // Prints list of Tasks to console
    public void listTasks() {
        for (Task task: tasks) {
            System.out.print(task.getName() + ": ");
            if (task.getStatus()) {
                System.out.println("Completed");
            } else {
                System.out.println("Not Completed");
            }
        }
    }
}