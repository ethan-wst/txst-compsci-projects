public class Mermaid extends GameCharacter implements Swimmable{
    private int finLength;

    public Mermaid(String name, int level, int health, int finLength) {
        super(name, level, health);
        this.finLength = finLength;
    }

    public void sing() {

    }

    @Override
    public void swim() {

    }

    @Override
    public void stopSwimming() {

    }
}
