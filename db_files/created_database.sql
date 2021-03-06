CREATE TABLE IF NOT EXISTS USERS(USER_ID serial PRIMARY KEY,
								USER_NAME VARCHAR(64) NOT NULL,
								EMAIL_ID VARCHAR(64) NOT NULL,
								HASHED_PASSWORD VARCHAR(64) NOT NULL,
								SALT VARCHAR(64) NOT NULL,
								CREATED_DATE date NOT NULL,
								EDITED_DATE date NOT NULL);


CREATE TABLE IF NOT EXISTS MESSAGES(MESSAGE_ID serial PRIMARY KEY,
									SENDER_ID int NOT NULL,
									RECEIVER_ID int NOT NULL,
									MESSAGE_TYPE VARCHAR(10) NOT NULL,
									MESSAGE_CONTENT varchar NOT NULL,
									CREATED_DATE date NOT NULL,
									EDITED_DATE date NOT NULL);


CREATE TABLE IF NOT EXISTS CONTACTS(CONTACT_ID serial PRIMARY KEY,
									USER_ID int NOT NULL,
									CONTACT_USER_ID int NOT NULL,
									CREATED_DATE date NOT NULL,
									EDITED_DATE date NOT NULL);