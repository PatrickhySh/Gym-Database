CREATE TABLE Equipment(
    name CHAR(20) PRIMARY KEY,
    equipmentID INTEGER
);

CREATE TABLE ExerciseWithEquipment(
    name CHAR(20) PRIMARY KEY,
    equipmentID INTEGER,
    FOREIGN KEY(equipmentID) REFERENCES Equipment ON DELETE CASCADE
);

CREATE TABLE ExerciseContainsExercisePlan(
    name CHAR(20),
    planID INTEGER,
    PRIMARY KEY(name, planID),
    FOREIGN KEY(name) REFERENCES ExerciseWithEquipment ON DELETE CASCADE,
    FOREIGN KEY(planID) REFERENCES ExercisePlan ON DELETE CASCADE
);

CREATE TABLE ExercisePlan(
    name CHAR(20),
    planID INTEGER PRIMARY KEY
);

CREATE TABLE ExerciseGoal(
    name CHAR(20) PRIMARY KEY,
    goal CHAR(20),
    FOREIGN KEY(name) REFERENCES ExercisePlan(name)
);

CREATE TABLE UserWithDietPlan(
    name CHAR(20),
    userID INTEGER PRIMARY KEY,
    phone_number CHAR(20),
    dietPlanID INTEGER NULL,
    FOREIGN KEY(dietPlanID) REFERENCES DietPlan ON DELETE CASCADE
);

CREATE TABLE UserPracticesExercisePlan(
    planId INTEGER,
    userId INTEGER,
    PRIMARY KEY(planId, userId)
);

CREATE TABLE Trainer(
    trainerID INTEGER PRIMARY KEY,
    name CHAR(20),
    phone_number CHAR(20)
);

CREATE TABLE CertificateWithTrainer(
    certId INTEGER PRIMARY KEY,
    name CHAR(20),
    trainerID INTEGER,
    FOREIGN KEY(trainerID) REFERENCES Trainer ON DELETE SET NULL
);

CREATE TABLE TrainerTrainsUser(
    userID: INTEGER,
    trainerID: INTEGER,
    PRIMARY KEY(userID, trainerID),
    FOREIGN KEY(userID) REFERENCES UserWithDietPlan ON DELETE CASCADE,
    FOREIGN KEY(trainerID) REFERENCES Trainer ON DELETE CASCADE
);

CREATE TABLE TimeslotSchedule(
    time: date,
    userID: Integer,
    trainerID: Integer,
    PRIMARY KEY(time, userID, trainerID),
    FOREIGN KEY(userID) REFERENCES UserWithDietPlan ON DELETE CASCADE,
    FOREIGN KEY(trainerID) REFERENCES Trainer ON DELETE CASCADE
);

CREATE TABLE DietPlan(
    planID: Integer PRIMARY KEY,
    name: char(20)
);

CREATE TABLE DietPlanConsistsConsumable(
    planId: INTEGER,
    name: char(20),
    portionByGramOrMl: double,
    PRIMARY KEY(planId, name),
    FOREIGN KEY(planId) REFERENCES DietPlan ON DELETE NO ACTION,
    FOREIGN KEY(name) REFERENCES Consumable ON DELETE CASCADE
);

CREATE TABLE Consumable(
    name: char(40),
    caloriePer100GramOrMl: double
);

INSERT INTO Equipment VALUES ('Bodyweight', 0);
INSERT INTO Equipment VALUES ('Barbell', 1);
INSERT INTO Equipment VALUES ('Bench', 2);
INSERT INTO Equipment VALUES ('Treadmill', 3);
INSERT INTO Equipment VALUES ('Dumbbells', 4);

INSERT INTO ExerciseWithEquipment VALUES ('Squat', 1);
INSERT INTO ExerciseWithEquipment VALUES ('Deadlift', 1);
INSERT INTO ExerciseWithEquipment VALUES ('BenchPress', 2);
INSERT INTO ExerciseWithEquipment VALUES ('Jogging', 3);
INSERT INTO ExerciseWithEquipment VALUES ('Pushup', 0);

INSERT INTO ExerciseContainsExercisePlan VALUES ('Squat', 1);
INSERT INTO ExerciseContainsExercisePlan VALUES ('Deadlift', 2);
INSERT INTO ExerciseContainsExercisePlan VALUES ('BenchPress', 3);
INSERT INTO ExerciseContainsExercisePlan VALUES ('Jogging', 4);
INSERT INTO ExerciseContainsExercisePlan VALUES ('Pushup', 5);

INSERT INTO ExercisePlan VALUES ('Big Quads', 1);
INSERT INTO ExercisePlan VALUES ('Death by Deadlifts', 2);
INSERT INTO ExercisePlan VALUES ('Monday Chest Day', 3);
INSERT INTO ExercisePlan VALUES ('Weight Loss', 4);
INSERT INTO ExercisePlan VALUES ('Calisthenics', 5);

INSERT INTO UserWithDietPlan VALUES ('User1', 1111, '604-111-2222', 101);
INSERT INTO UserWithDietPlan VALUES ('User2', 2222, '604-222-3333', 101);
INSERT INTO UserWithDietPlan VALUES ('User3', 3333, '604-333-4444', 101);
INSERT INTO UserWithDietPlan VALUES ('User4', 4444, '604-444-5555', 101);
INSERT INTO UserWithDietPlan VALUES ('User5', 5555, '604-555-6666', 101);

INSERT INTO UserPracticesExercisePlan VALUES(1, 1111);
INSERT INTO UserPracticesExercisePlan VALUES(2, 2222);
INSERT INTO UserPracticesExercisePlan VALUES(3, 3333);
INSERT INTO UserPracticesExercisePlan VALUES(4, 4444);
INSERT INTO UserPracticesExercisePlan VALUES(5, 5555);

INSERT INTO Trainer VALUES (111, 'John');
INSERT INTO Trainer VALUES (222, 'Chloe');
INSERT INTO Trainer VALUES (333, 'Ron');
INSERT INTO Trainer VALUES (444, 'Joy');
INSERT INTO Trainer VALUES (555, 'Marcus');

INSERT INTO TrainerTrainsUser VALUES (1111, 111);
INSERT INTO TrainerTrainsUser VALUES (1111, 222);
INSERT INTO TrainerTrainsUser VALUES (2222, 222);
INSERT INTO TrainerTrainsUser VALUES (3333, 333);
INSERT INTO TrainerTrainsUser VALUES (4444, 444);
INSERT INTO TrainerTrainsUser VALUES (5555, 555);

INSERT INTO TimeslotSchedule VALUES (2021-05-28, 1111, 111);
INSERT INTO TimeslotSchedule VALUES (2021-06-01, 1111, 222);
INSERT INTO TimeslotSchedule VALUES (2021-06-01, 2222, 222);
INSERT INTO TimeslotSchedule VALUES (2021-06-02, 4444, 444);
INSERT INTO TimeslotSchedule VALUES (2021-06-04, 5555, 555);

INSERT INTO DietPlan VALUES (101, 'starvation diet');
INSERT INTO DietPlan VALUES (102, 'keto');
INSERT INTO DietPlan VALUES (103, 'intermittent fasting');
INSERT INTO DietPlan VALUES (104, 'calorie counting');
INSERT INTO DietPlan VALUES (105, 'paleo');

INSERT INTO DietPlanConsistsConsumable VALUES (101, 'banana', 100);
INSERT INTO DietPlanConsistsConsumable VALUES (102, 'apple', 50);
INSERT INTO DietPlanConsistsConsumable VALUES (103, 'energy bar', 24.3);
INSERT INTO DietPlanConsistsConsumable VALUES (104, 'burrito', 67.5);
INSERT INTO DietPlanConsistsConsumable VALUES (105, 'water', 100);

INSERT INTO Consumable VALUES ('banana', 89);
INSERT INTO Consumable VALUES ('apple', 100);
INSERT INTO Consumable VALUES ('energy bar', 350);
INSERT INTO Consumable VALUES ('burrito', 206);
INSERT INTO Consumable VALUES ('cheeseburger', 303);
Insert into Consumable Values ('soda', 41);
Insert into Consumable Values ('diet soda', 0);
Insert into Consumable Values ('water', 0);
Insert into Consumable Values ('coffee with cream and sugar', 28);
Insert into Consumable Values ('orange juice', 45);