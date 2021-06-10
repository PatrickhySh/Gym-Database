package ca.ubc.cs304.model;

import java.util.ArrayList;

public class ExercisePlan {
    private final int planId;
    private final String name;

    public ExercisePlan(int planId, String name){
        this.planId = planId;
        this.name = name;
    }

    public String getName() { return name; }

    public int getPlanId() {
        return planId;
    }
}
