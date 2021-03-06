BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "logins" (
	"id"	INTEGER PRIMARY KEY AUTOINCREMENT,
	"email"	TEXT,
	"password"	INTEGER
);
CREATE TABLE IF NOT EXISTS "teachers" (
	"id"	INTEGER PRIMARY KEY AUTOINCREMENT,
	"name"	INTEGER,
	"phone"	INTEGER,
	"major_id"	INTEGER
);
CREATE TABLE IF NOT EXISTS "majors" (
	"id"	INTEGER PRIMARY KEY AUTOINCREMENT,
	"name"	INTEGER,
	"credits"	INTEGER,
	"student_id"	INTEGER
);
CREATE TABLE IF NOT EXISTS "students" (
	"id"	INTEGER PRIMARY KEY AUTOINCREMENT,
	"name"	TEXT,
	"phone"	INTEGER,
	"login_id"	INTEGER
);
INSERT INTO "logins" VALUES (1,'john@gmail.com','abc123');
INSERT INTO "teachers" VALUES (1,'James Bond',88881234,1);
INSERT INTO "teachers" VALUES (2,'Moon Bae',99991234,2);
INSERT INTO "teachers" VALUES (3,'J Lee',87661234,3);
INSERT INTO "majors" VALUES (1,'CS',120,1);
INSERT INTO "students" VALUES (1,'John Park',99991234,1);
COMMIT;
