package ca.ubc.cs304.model;

public class User {
    private final String name;
    private final int userId;
    private final int phoneNumber;

    public User(String name, int userId, int phoneNumber){
        this.name = name;
        this.userId = userId;
        this.phoneNumber = phoneNumber;
    }

    public String getName() {
        return name;
    }

    public int getUserId() {
        return userId;
    }

    public int getPhoneNumber() {
        return phoneNumber;
    }
}
