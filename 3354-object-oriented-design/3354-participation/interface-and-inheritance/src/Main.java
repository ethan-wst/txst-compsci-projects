public class Main {
    public static void main(String[] args) {
        System.out.println("Test Case 1:");
        Wizzard wiz = new Wizzard("Dan", 2, 50, 12);
        wiz.castSpell();
        wiz.attack();
        wiz.fly();
        wiz.teleport(2, 3);
        wiz.land();

        System.out.println("\nTest Case 2:");
        Mermaid mer = new Mermaid("Pat", 1, 12, 5);
        mer.sing();
        mer.swim();
        mer.defend();
        mer.stopSwimming();

        System.out.println("\nTest Case 3:");
        Superhero hero = new Superhero("Invisibility", "Sid", 4, 58);
        hero.saveTheDay();
        hero.attack();
        hero.fly();
        hero.teleport(4, 6);
        hero.land();
        hero.swim();
        hero.stopSwimming();
        performActions(hero);
        performActions(mer);
        performActions(wiz);
        
    }

    public static void performActions(GameCharacter character) {
        System.out.println("\nTest Case 4:");
        character.attack();
        character.defend();
        if (character instanceof Flyable) {
            ((Flyable)character).fly();
            ((Flyable)character).land();
        } else if (character instanceof Swimmable) {
            ((Swimmable)character).swim();
            ((Swimmable)character).stopSwimming();
        } else if (character instanceof Teleportable) {
            ((Teleportable)character).teleport(1, 3);
        }
    }
}
