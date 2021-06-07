package ca.ubc.cs304.model;

import java.util.ArrayList;

public class DietPlan {
    private final int planId;
    private ArrayList<Consumable> diet;

    public DietPlan(int id) {
        planId = id;
        diet = new ArrayList<>();
    }

    public void addConsumable(Consumable c) {
        diet.add(c);
    }

    public Boolean removeConsumable(Consumable c) {
        return diet.remove(c);
    }

    public int getTotalCalories() {
        int total = 0;
        for (Consumable c : diet) {
            total += c.getCalorieDensity() * c.getAmount();
        }
        return total;
    }

    public int getPlanId() {
        return planId;
    }
}
