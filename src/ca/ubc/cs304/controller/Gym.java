package ca.ubc.cs304.controller;

import ca.ubc.cs304.database.DatabaseConnectionHandler;
import ca.ubc.cs304.delegates.GymFunctionDelegate;
import ca.ubc.cs304.ui.TerminalTransactions;

public class Gym implements GymFunctionDelegate {
    private DatabaseConnectionHandler dbHandler = null;
    private final String userName = "ora_patri08";
    private final String password = "a64817844";


    public Gym(){
        dbHandler = new DatabaseConnectionHandler();
    }

    public void start() {
        boolean didConnect = dbHandler.login(userName, password);

        if (didConnect) {
            // Once connected, remove login window and start text transaction flow

            TerminalTransactions transaction = new TerminalTransactions();
            transaction.setupDatabase(this);
            transaction.showMainMenu(this);

        } else {
            /*
            loginWindow.handleLoginFailed();

            if (loginWindow.hasReachedMaxLoginAttempts()) {
                loginWindow.dispose();
                System.out.println("You have exceeded your number of allowed attempts");
                System.exit(-1);
             */
            }
        }

    @Override
    public void databaseSetup() {

    }

    @Override
    public void insertEquipment(int id, String name) {

    }


    @Override
    public void deleteEquipment(int id) {

    }

    @Override
    public void updateEquipment(int id, String name) {

    }

    @Override
    public void insertExercise(int id, String name) {

    }

    @Override
    public void deleteExercise(int id) {

    }

    @Override
    public void updateExercise(int id) {

    }

    @Override
    public void insertUser(int id, String name, int phoneNum) {

    }

    @Override
    public void deleteUser(int id) {

    }

    @Override
    public void updateUser(int id) {

    }

    @Override
    public void insertTrainer(int id, String name, int phoneNum) {

    }

    @Override
    public void deleteTrainer(int id) {

    }

    @Override
    public void updateTrainer(int id) {

    }

    @Override
    public void insertTimeSlot(int tid, int time) {

    }

    @Override
    public void deleteTimeSlot(int tid, int time) {

    }

    @Override
    public void insertConsumable(String name, int calories, Boolean isFood) {

    }

    @Override
    public void deleteConsumable(String name) {

    }

    @Override
    public void insertConsumable(String name) {

    }

    @Override
    public void terminalTransactionsFinished() {

    }

    public static void main(String args[]) {
        Gym gym = new Gym();
        gym.start();
    }
}
