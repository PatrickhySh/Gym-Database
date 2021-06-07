package ca.ubc.cs304.model;

public class Drink extends Consumable{
    public Drink(String name, int density, int amount){
        this.name = name;
        this.calorieDensity = density;
        this.amount = amount;
    }
}
