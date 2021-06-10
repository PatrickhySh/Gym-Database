package ca.ubc.cs304.model;

public class ExerciseContainsExercisePlan {
    private final String name;
    private final int planId;

    public ExerciseContainsExercisePlan(String name, int planId) {
        this.name = name;
        this.planId = planId;
    }

    public String getName() {
        return name;
    }

    public int getPlanId() {
        return planId;
    }
}
