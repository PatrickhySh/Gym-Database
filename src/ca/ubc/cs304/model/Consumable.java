package ca.ubc.cs304.model;

abstract public class Consumable {
    String name;
    int calorieDensity;
    int amount;

    public int getAmount() {
        return amount;
    }

    public String getName() {
        return name;
    }

    public int getCalorieDensity() {
        return calorieDensity;
    }
}
