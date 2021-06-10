package ca.ubc.cs304.model;

import java.util.HashSet;


public class Trainer {
    private final String name;
    private final int tId;
    private final int phoneNumber;
    private HashSet<TrainingSession> appointments;

    public Trainer(String name, int tid, int phoneNumber){
        this.name = name;
        this.tId = tid;
        this.phoneNumber = phoneNumber;
        appointments = new HashSet<>();
    }

    public Boolean scheduleApt(TrainingSession t){
        if (!appointments.contains(t)){
            appointments.add(t);
            return true;
        }else {
            return false;
        }
    }

    public String getName() {
        return name;
    }

    public int gettId() {
        return tId;
    }

    public int getPhoneNumber() {
        return phoneNumber;
    }
}
