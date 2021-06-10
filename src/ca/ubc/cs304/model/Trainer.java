package ca.ubc.cs304.model;

import java.util.HashSet;


public class Trainer {
    private final String name;
    private final int trainerId;
    private final int phoneNumber;

    public Trainer(String name, int trainerId, int phoneNumber){
        this.name = name;
        this.trainerId = trainerId;
        this.phoneNumber = phoneNumber;
    }

    public String getName() {
        return name;
    }

    public int getTrainerId() {
        return trainerId;
    }

    public int getPhoneNumber() {
        return phoneNumber;
    }
}
