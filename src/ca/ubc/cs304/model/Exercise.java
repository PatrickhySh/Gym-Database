package ca.ubc.cs304.model;

public class Exercise {
    private final String name;
    private final int intensity;// calorie per hour

    public Exercise(String n, int i){
        name = n;
        intensity = i;
    }

    public String getName() {
        return name;
    }

    public int getIntensity() {
        return intensity;
    }
}
