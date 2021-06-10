package ca.ubc.cs304.delegates;


public interface GymFunctionDelegate {

    public void databaseSetup();

    public void insertEquipment(int id,String name);
    public void deleteEquipment(int id);
    public void updateEquipment(int id,String name);

    public void insertExercise(int id,String name);
    public void deleteExercise(int id);
    public void updateExercise(int id);

    public void insertUser(int id,String name, int phoneNum);
    public void deleteUser(int id);
    public void updateUser(int id);

    public void insertTrainer(int id,String name, int phoneNum);
    public void deleteTrainer(int id);
    public void updateTrainer(int id);

    public void insertTimeSlot(int tid,int time);
    public void deleteTimeSlot(int tid,int time);

    public void insertConsumable(String name,int calories, Boolean isFood);
    public void deleteConsumable(String name);
    public void insertConsumable(String name);


    public void terminalTransactionsFinished();

}
