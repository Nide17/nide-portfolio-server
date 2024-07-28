CREATE TABLE categories(
   id        SERIAL  NOT NULL PRIMARY KEY 
  ,title     VARCHAR(14) NOT NULL
  ,createdAt DATE  NOT NULL
  ,updatedAt DATE  NOT NULL
);

INSERT INTO categories VALUES (1,'Others','2022-01-16','2022-01-16');
INSERT INTO categories VALUES (2,'Resumes','2022-01-16','2022-01-16');
INSERT INTO categories VALUES (3,'Certificates','2022-01-16','2022-01-16');
INSERT INTO categories VALUES (4,'Academics','2022-01-16','2022-01-16');
INSERT INTO categories VALUES (5,'Identification','2022-01-16','2022-01-16');
INSERT INTO categories VALUES (6,'Contracts','2022-01-16','2022-01-16');
INSERT INTO categories VALUES (7,'Properties','2022-01-16','2022-01-16');
INSERT INTO categories VALUES (8,'Jobs','2022-01-16','2022-01-16');

CREATE TABLE subcategories(
   id         SERIAL  NOT NULL PRIMARY KEY 
  ,title      VARCHAR(100) NOT NULL
  ,categoryId INTEGER  NOT NULL
  ,createdAt  DATE  NOT NULL
  ,updatedAt  DATE  NOT NULL
);

INSERT INTO subcategories VALUES (1,'Others',3,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (2,'English',3,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (3,'Programming',3,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (4,'Network',3,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (5,'Database',3,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (6,'Cloud',3,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (7,'IT Support',3,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (8,'Dev CV',2,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (9,'Non Dev CV',2,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (10,'Part time',6,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (11,'Full time',6,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (12,'Freelance',6,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (13,'House',7,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (14,'Car',7,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (15,'Land',7,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (16,'NIDA',5,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (17,'Migration',5,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (18,'Justice',5,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (19,'Irembo',5,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (20,'Police',5,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (21,'CHUK',5,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (22,'UAP',5,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (23,'AC Group',5,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (24,'Equity',5,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (25,'RBC',5,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (26,'ECOBANK',5,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (27,'REG',5,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (28,'UR',4,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (29,'GS St Aloys Rwamagana',4,'2022-01-16','2022-01-16');
INSERT INTO subcategories VALUES (30,'Carnegie Mellon University',4,'2022-01-16','2022-01-16');


CREATE TABLE aboutdocs(
   id             SERIAL  NOT NULL PRIMARY KEY 
  ,title          VARCHAR(100) NOT NULL
  ,awsLink        VARCHAR(255) NOT NULL
  ,credentialLink VARCHAR(255)
  ,categoryId     INTEGER  NOT NULL
  ,subcategoryId  INTEGER  NOT NULL
  ,provider       VARCHAR(100) NOT NULL
  ,createdAt      DATE  NOT NULL
  ,updatedAt      DATE  NOT NULL
);
INSERT INTO aboutdocs VALUES (1,'Web','https://res.cloudinary.com/demsylp8d/image/upload/v1722165260/portfolio/resume/Front.pdf',NULL,2,8,'Niyomwungeri Parmenide Ishimwe','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (2,'C','https://res.cloudinary.com/demsylp8d/image/upload/v1722165238/portfolio/resume/C.pdf',NULL,2,8,'Niyomwungeri Parmenide Ishimwe','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (3,'Java','https://res.cloudinary.com/demsylp8d/image/upload/v1722165279/portfolio/resume/Java.pdf',NULL,2,8,'Niyomwungeri Parmenide Ishimwe','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (4,'Python & Data','https://res.cloudinary.com/demsylp8d/image/upload/v1722165447/portfolio/resume/Data.pdf',NULL,2,9,'Niyomwungeri Parmenide Ishimwe','2022-01-16','2022-01-16');

INSERT INTO aboutdocs VALUES (5,'MSc in Information Technology','https://res.cloudinary.com/demsylp8d/image/upload/v1722164315/portfolio/academics/MSIT.pdf',NULL,4,30,'Carnegie Mellon University','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (6,'BSc in Computer Science','https://res.cloudinary.com/demsylp8d/image/upload/v1722164233/portfolio/academics/Bachelor.pdf',NULL,4,28,'University of Rwanda','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (7,'Msc Transcripts','https://res.cloudinary.com/demsylp8d/image/upload/v1722164397/portfolio/academics/MSIT%20Academic%20Record.pdff',NULL,4,30,'Carnegie Mellon University','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (8,'BSc Transcripts','https://res.cloudinary.com/demsylp8d/image/upload/v1722164255/portfolio/academics/BSc%20Transcript.pdf',NULL,4,28,'University of Rwanda','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (9,'High School Certificate','https://res.cloudinary.com/demsylp8d/image/upload/v1722164204/portfolio/academics/High%20School.pdf',NULL,4,29,'GS St Aloys Rwamagana','2022-01-16','2022-01-16');

INSERT INTO aboutdocs VALUES (10,'Registered Scrum Master','https://res.cloudinary.com/demsylp8d/image/upload/v1722164721/portfolio/certificates/Scrum.pdf',NULL,3,1,'Scrum Inc.','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (11,'Sofware Development certificates','https://res.cloudinary.com/demsylp8d/image/upload/v1722164550/portfolio/certificates/Coding.pdf',NULL,3,3,'Google, Coursera, Sololearn, CS50, ...','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (12,'Data Science Certificates','https://res.cloudinary.com/demsylp8d/image/upload/v1722164578/portfolio/certificates/Data.pdf',NULL,3,1,'Google','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (13,'CompTIA Network+','https://res.cloudinary.com/demsylp8d/image/upload/v1722164616/portfolio/certificates/CompTIA%20N.pdf',NULL,3,4,'CompTIA','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (14,'Google IT Support Professional Certificate','https://res.cloudinary.com/demsylp8d/image/upload/v1722164648/portfolio/certificates/IT%20Support.pdf','https://www.credly.com/badges/07ac6a5c-af9a-4dd9-92d7-c455e8a5744b',3,7,'Google, Coursera','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (15,'Digital Marketing','https://res.cloudinary.com/demsylp8d/image/upload/v1722164668/portfolio/certificates/Digital%20Marketing.pdf','https://learndigital.withgoogle.com/digitalskills/validate-certificate-code',3,1,'Google','2022-01-16','2022-01-16');

ALTER TABLE categories RENAME COLUMN createdat TO "createdAt";
ALTER TABLE categories RENAME COLUMN updatedat TO "updatedAt";

ALTER TABLE aboutdocs RENAME COLUMN categoryid TO "categoryId";
ALTER TABLE aboutdocs RENAME COLUMN subcategoryid TO "subcategoryId";

ALTER TABLE aboutdocs RENAME COLUMN awslink TO "awsLink";
ALTER TABLE aboutdocs RENAME COLUMN credentialLink TO "credentialLink";

ALTER TABLE aboutdocs RENAME COLUMN createdat TO "createdAt";
ALTER TABLE aboutdocs RENAME COLUMN updatedat TO "updatedAt";

ALTER TABLE subcategories RENAME COLUMN categoryid TO "categoryId";
ALTER TABLE subcategories RENAME COLUMN createdat TO "createdAt";
ALTER TABLE subcategories RENAME COLUMN updatedat TO "updatedAt";


