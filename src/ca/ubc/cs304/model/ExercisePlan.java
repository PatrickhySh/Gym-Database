package ca.ubc.cs304.model;

import java.util.ArrayList;

public class ExercisePlan {
    private final int planId;
    private ArrayList<Exercise> workout;

    public ExercisePlan(int id){
        planId = id;
        workout = new ArrayList<>();
    }

    public void addExercise(Exercise e){
        workout.add(e);
    }
    public Boolean removeExercise(Exercise e){
        return workout.remove(e);
    }
    public int getTotalIntensity(){
        int totalIntensity = 0;
        for (Exercise e: workout){
            totalIntensity += e.getIntensity();
        }
        return  totalIntensity;
    }

    public int getPlanId() {
        return planId;
    }
}
