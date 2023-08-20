BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user1','user1','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('user2','user2','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('user3','user3','ROLE_USER');

INSERT INTO questions (question, answer) VALUES ('question1', 'answer1');
INSERT INTO questions (question, answer) VALUES ('question2', 'answer2');
INSERT INTO questions (question, answer) VALUES ('question3', 'answer3');

COMMIT TRANSACTION;
