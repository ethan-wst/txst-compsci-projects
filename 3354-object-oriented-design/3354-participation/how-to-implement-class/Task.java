public class Task {
    private String taskName;
    private boolean isComplete;

    public Task(String name) {
        this.taskName = name;
        this.isComplete = false;
    }

    public String getName() {
        return taskName;
    }

    public boolean getStatus() {
        return isComplete;
    }

    public void markComplete() {
        isComplete = true;
    }
}
