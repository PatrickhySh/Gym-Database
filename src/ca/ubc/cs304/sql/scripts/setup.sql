CREATE TABLE Equipment(
    name CHAR(20) PRIMARY KEY,
    equipmentId INTEGER
);

CREATE TABLE ExerciseWithEquipment(
    name CHAR(20) PRIMARY KEY,
    equipmentId INTEGER,
    FOREIGN KEY(equipmentId) REFERENCES Equipment ON DELETE CASCADE
);

CREATE TABLE ExerciseContainsExercisePlan(
    name CHAR(20),
    planId INTEGER,
    PRIMARY KEY(name, planId),
    FOREIGN KEY(name) REFERENCES ExerciseWithEquipment ON DELETE CASCADE,
    FOREIGN KEY(planId) REFERENCES ExercisePlan ON DELETE CASCADE
);

CREATE TABLE ExercisePlan(
    name CHAR(20),
    planId INTEGER PRIMARY KEY
);

CREATE TABLE ExerciseGoal(
    name CHAR(20) PRIMARY KEY,
    goal CHAR(20),
    FOREIGN KEY(name) REFERENCES ExercisePlan(name)
);

CREATE TABLE UserWithDietPlan(
    name CHAR(20),
    userId INTEGER PRIMARY KEY,
    phone_number CHAR(20),
    dietPlanId INTEGER NULL,
    FOREIGN KEY(dietPlanId) REFERENCES DietPlan ON DELETE CASCADE
);

CREATE TABLE UserPracticesExercisePlan(
    planId INTEGER,
    userId INTEGER,
    PRIMARY KEY(planId, userId)
);

CREATE TABLE Trainer(
    trainerId INTEGER PRIMARY KEY,
    name CHAR(20),
    phone_number CHAR(20)
);

CREATE TABLE CertificateWithTrainer(
    certId INTEGER PRIMARY KEY,
    name CHAR(20),
    trainerId INTEGER,
    FOREIGN KEY(trainerId) REFERENCES Trainer ON DELETE SET NULL
);

CREATE TABLE TrainerTrainsUser(
    userID: INTEGER,
    trainerId: INTEGER,
    PRIMARY KEY(userId, trainerId),
    FOREIGN KEY(userId) REFERENCES UserWithDietPlan ON DELETE CASCADE,
    FOREIGN KEY(trainerId) REFERENCES Trainer ON DELETE CASCADE
);

CREATE TABLE TimeslotSchedule(
    time: date,
    userId: Integer,
    trainerId: Integer,
    PRIMARY KEY(time, userId, trainerId),
    FOREIGN KEY(userId) REFERENCES UserWithDietPlan ON DELETE CASCADE,
    FOREIGN KEY(trainerId) REFERENCES Trainer ON DELETE CASCADE
);

CREATE TABLE DietPlan(
    planId: Integer PRIMARY KEY,
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
