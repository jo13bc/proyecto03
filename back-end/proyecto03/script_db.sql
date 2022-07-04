DROP TABLE "user";
DROP TABLE "time_box";
DROP TABLE "availability";
DROP TABLE "meeting";

CREATE TABLE "user" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "user" TEXT UNIQUE,
    "password" TEXT,
    "name" TEXT
);

CREATE TABLE "time_box"(
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "start" TEXT,
    "end" TEXT
);

CREATE TABLE "availability" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "user_id" INTEGER,
    "monday_time_box_id" INTEGER,
    "tuesday_time_box_id" INTEGER,
    "wednesday_time_box_id" INTEGER,
    "thursday_time_box_id" INTEGER,
    "friday_time_box_id" INTEGER,
    "saturday_time_box_id" INTEGER,
    "sunday_time_box_id" INTEGER
);

CREATE TABLE "meeting" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "professional_id" INTEGER,
    "date" TEXT,
    "description" TEXT,
    "time_box_id" INTEGER,
    "user_id" INTEGER
);

INSERT INTO "user" ("user", "password", "name")
VALUES('1234', '1234', 'José');

INSERT INTO "user" ("user", "password", "name")
VALUES('2345', '2345', 'Joseline');

INSERT INTO "time_box" ("id", "start", "end")
VALUES(1, '07:00', '17:30');

INSERT INTO "time_box" ("id", "start", "end")
VALUES(2, '07:00', '17:30');

INSERT INTO "time_box" ("id", "start", "end")
VALUES(3, '07:00', '17:30');

INSERT INTO "time_box" ("id", "start", "end")
VALUES(4, '07:00', '17:30');

INSERT INTO "time_box" ("id", "start", "end")
VALUES(5, '07:00', '17:30');

INSERT INTO "time_box" ("id", "start", "end")
VALUES(6, '07:00', '17:30');

INSERT INTO "time_box" ("id", "start", "end")
VALUES(7, '07:00', '17:30');

INSERT INTO "time_box" ("id", "start", "end")
VALUES(8, '07:00', '17:30');

INSERT INTO "time_box" ("id", "start", "end")
VALUES(9, '07:00', '17:30');

INSERT INTO "time_box" ("id", "start", "end")
VALUES(10, '07:00', '17:30');

INSERT INTO "time_box" ("id", "start", "end")
VALUES(11, '07:00', '17:30');

INSERT INTO "time_box" ("id", "start", "end")
VALUES(12, '07:00', '17:30');

INSERT INTO "time_box" ("id", "start", "end")
VALUES(13, '07:00', '17:30');

INSERT INTO "time_box" ("id", "start", "end")
VALUES(14, '07:00', '17:30');

INSERT INTO "time_box" ("id", "start", "end")
VALUES(15, '12:00', '13:00');

INSERT INTO "time_box" ("id", "start", "end")
VALUES(16, '13:00', '14:00');

INSERT INTO "time_box" ("id", "start", "end")
VALUES(17, '07:00', '07:30');

INSERT INTO "time_box" ("id", "start", "end")
VALUES(18, '09:00', '09:30');

INSERT INTO "availability" ("user_id", "monday_time_box_id",
"tuesday_time_box_id", "wednesday_time_box_id", 
"thursday_time_box_id", "friday_time_box_id",
"saturday_time_box_id", "sunday_time_box_id")
VALUES(1, 1, 2, 3, 4, 5, 6, 7);

INSERT INTO "availability" ("user_id", "monday_time_box_id",
"tuesday_time_box_id", "wednesday_time_box_id", 
"thursday_time_box_id", "friday_time_box_id",
"saturday_time_box_id", "sunday_time_box_id")
VALUES(2, 8, 9, 10, 11, 12, 13, 14);

INSERT INTO "meeting" ("professional_id", "date", "description", "time_box_id", "user_id")
VALUES(1, NULL, 'Almuerzo', 15, 1);

INSERT INTO "meeting" ("professional_id", "date", "description", "time_box_id", "user_id")
VALUES(2, NULL, 'Almuerzo', 16, 1);

INSERT INTO "meeting" ("professional_id", "date", "description", "time_box_id", "user_id")
VALUES(1, '13-06-2022', 'Cita Joseline', 17, 2);

INSERT INTO "meeting" ("professional_id", "date", "description", "time_box_id", "user_id")
VALUES(1, '15-06-2022', 'Cita Joseline', 18, 2);
