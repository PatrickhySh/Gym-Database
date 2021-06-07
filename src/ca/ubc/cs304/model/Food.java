package ca.ubc.cs304.model;

public class Food extends Consumable {
    public Food(String name, int density, int amount){
        this.name = name;
        this.calorieDensity = density;
        this.amount = amount;
    }
}
