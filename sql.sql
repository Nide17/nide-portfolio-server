CREATE TABLE categories(
   id        SERIAL  NOT NULL PRIMARY KEY 
  ,title     VARCHAR(14) NOT NULL
  ,createdAt DATE  NOT NULL
  ,updatedAt DATE  NOT NULL
)

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
INSERT INTO aboutdocs VALUES (1,'Dev Resume','https://niyomwungeri.s3.us-east-2.amazonaws.com/resumes/dev_resume_17_12_2021.pdf',NULL,2,8,'Niyomwungeri Parmenide Ishimwe','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (2,'Professional CV','https://niyomwungeri.s3.us-east-2.amazonaws.com/resumes/non_dev_cv_17_12_2021.pdf',NULL,2,9,'Niyomwungeri Parmenide Ishimwe','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (3,'BSc in Computer Science','https://niyomwungeri.s3.us-east-2.amazonaws.com/academics/degree.pdf',NULL,4,28,'University of Rwanda','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (4,'BSc Transcripts','https://niyomwungeri.s3.us-east-2.amazonaws.com/academics/transcripts.pdf',NULL,4,28,'University of Rwanda','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (5,'Certificate of merit in Rapid Prototyping for IoT','https://niyomwungeri.s3.us-east-2.amazonaws.com/academics/waziup_ur_iot.pdf',NULL,4,28,'University of Rwanda, WAZIUP','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (6,'Certificate of completion of a workshop on Entrepreneurship for Engineers and Scientists','https://niyomwungeri.s3.us-east-2.amazonaws.com/academics/ieee.pdf',NULL,4,28,'IEEE, ICTP, EAIFR, University of Rwanda','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (7,'High School Certificate','https://niyomwungeri.s3.us-east-2.amazonaws.com/academics/high_school.pdf',NULL,4,29,'GS St Aloys Rwamagana','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (8,'Certificate of membership in Media Club','https://niyomwungeri.s3.us-east-2.amazonaws.com/academics/media_club.pdf',NULL,4,29,'GS St Aloys Rwamagana','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (9,'Certification of completion of SQL Course','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/sololearn_sql.pdf','https://www.sololearn.com/Certificate/1060-8903575/jpg/',3,5,'Sololearn','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (10,'Certification of completion of Ruby Course','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/sololearn_ruby.pdf','https://www.sololearn.com/Certificate/1081-8903575/jpg/',3,3,'Sololearn','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (11,'Certification of completion of React + Redux Course','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/sololearn_react_redux.pdf','https://www.sololearn.com/Certificate/1097-8903575/jpg/',3,3,'Sololearn','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (12,'Certification of completion of Python Core Course','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/sololearn_python3.pdf','https://www.sololearn.com/Certificate/1073-8903575/jpg/',3,3,'Sololearn','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (13,'Certification of completion of PHP Course','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/sololearn_php.pdf','https://www.sololearn.com/Certificate/1059-8903575/jpg/',3,3,'Sololearn','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (14,'Certification of completion of jQuery Course','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/sololearn_jquery.pdf','https://www.sololearn.com/Certificate/1082-8903575/jpg/',3,3,'Sololearn','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (15,'Certification of completion of JavaScript Course','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/sololearn_javascript.pdf','https://www.sololearn.com/Certificate/1024-8903575/jpg/',3,3,'Sololearn','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (16,'Certification of completion of Java Course','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/sololearn_java.pdf','https://www.sololearn.com/certificates/course/en/8903575/1068/landscape/png',3,3,'Sololearn','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (17,'Certification of completion of HTML Course','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/sololearn_html.pdf','https://www.sololearn.com/Certificate/1014-8903575/jpg/',3,3,'Sololearn','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (18,'Certification of completion of CSS Course','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/sololearn_css.pdf','https://www.sololearn.com/Certificate/1023-8903575/jpg/',3,3,'Sololearn','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (19,'Certification of completion of C# Course','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/sololearn_csharp.pdf','https://www.sololearn.com/Certificate/1080-8903575/jpg/',3,3,'Sololearn','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (20,'Certificate of achievement of Write JavaScript for the Web','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/openclassrooms_write-javascript-for-the-web.pdf',NULL,3,3,'OpenClassrooms','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (21,'Certificate of achievement of Work Effectively in a Team','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/openclassrooms_work-effectively-in-a-team.pdf',NULL,3,3,'OpenClassrooms','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (22,'Certificate of achievement of Understanding the Web','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/openclassrooms_understanding_the_web.pdf',NULL,3,3,'OpenClassrooms','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (23,'Certificate of achievement of Optimize your website with DevTools','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/openclassrooms_optimize-your-website-with-devtools.pdf',NULL,3,3,'OpenClassrooms','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (24,'Certificate of achievement of Manage your code with Git and GitHub','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/openclassrooms_manage-your-code-with-git-and-github.pdf',NULL,3,3,'OpenClassrooms','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (25,'Certificate of achievement of Manage your code project','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/openclassrooms_manage_your_code_project.pdf',NULL,3,3,'OpenClassrooms','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (26,'Certificate of achievement of Learn to work autonomously','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/openclassrooms_learn-to-work-autonomously.pdf',NULL,3,3,'OpenClassrooms','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (27,'Certificate of achievement of Learn to code with JavaScript','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/openclassrooms_learn-to-code-with-javascript.pdf',NULL,3,3,'OpenClassrooms','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (28,'Certificate of achievement of Learn the Command Line in Terminal','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/openclassrooms_learn-the-command-line-in-terminal.pdf',NULL,3,3,'OpenClassrooms','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (29,'Certificate of achievement of Learn How to Learn','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/openclassrooms_learn-how-to-learn.pdf',NULL,3,3,'OpenClassrooms','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (30,'Certificate of achievement of Learn About Agile Project Management and Scrum','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/openclassrooms_learn-about-agile-project-management-and-scrum.pdf',NULL,3,3,'OpenClassrooms','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (31,'Certificate of achievement of Go Full-Stack With Node.js, Express, and MongoDB','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/openclassrooms_go-full-stack-with-node-js-express-and-mongodb.pdf',NULL,3,3,'OpenClassrooms','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (32,'Certificate of achievement of Create Web Page Layouts With CSS','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/openclassrooms_create-web-page-layouts-with-css.pdf',NULL,3,3,'OpenClassrooms','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (33,'Certificate of achievement of Build Your First Web Pages With HTML and CSS','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/openclassrooms_build-your-first-web-pages-with-html-and-css.pdf',NULL,3,3,'OpenClassrooms','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (34,'Certificate of achievement of Build web apps with ReactJS','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/openclassrooms_build-web-apps-with-reactjs.pdf',NULL,3,3,'OpenClassrooms','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (35,'Certificate of achievement of Breakdown and integrate a mockup','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/openclassrooms_breakdown-and-integrate-a-mockup.pdf',NULL,3,3,'OpenClassrooms','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (36,'Certificate of completion of The Fundamentals of Digital Marketing','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/google_the_fundamentals_of_digital_marketing.pdf','https://learndigital.withgoogle.com/digitalskills/validate-certificate-code',3,1,'Google','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (37,'Google IT Support Professional Certificate','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/google_it_support.pdf','https://www.credly.com/badges/07ac6a5c-af9a-4dd9-92d7-c455e8a5744b',3,7,'Google, Coursera','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (38,'Responsive Web Design Certificate','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/freecodecamp_responsive_web_design.pdf','https://freecodecamp.org/certification/niyomwungeri/responsive-web-design',3,3,'FreeCodeCamp','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (39,'JavaScript Algorithms and Data Structures Certificate','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/freecodecamp_javascript_algorithms_and_data_structures.pdf','https://freecodecamp.org/certification/niyomwungeri/javascript-algorithms-and-data-structures',3,3,'FreeCodeCamp','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (40,'The Graduate Record Examinations (GRE)','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/ets_gre.pdf',NULL,3,2,'ETS','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (41,'Duolingo English Test','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/duolingo.pdf','https://certs.duolingo.com/vczsfz4z',3,2,'Duolingo','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (42,'CS50s Web Programming with Python and JavaScript','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/cs50_web_programming_with_python_and_javascript.pdf','https://courses.edx.org/certificates/d60ef0301a9f4752b024606d96dca7dd',3,3,'CS50, eDX, RISA','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (43,'The Bits and Bytes of Computer Networking Certificate','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/coursera_the_bits_and_bytes_of_computer_networking.pdf','https://coursera.org/verify/2GSU9W83J8QC',3,4,'Google, Coursera','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (44,'Technical Support Fundamentals Certificate','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/coursera_technical_support_fundamentals.pdf','https://coursera.org/verify/QUCWMKNT4YCS',3,7,'Google, Coursera','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (45,'System Administration and IT Infrastructure Services','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/coursera_system_administration_and_it_infrastructure.pdf','https://coursera.org/verify/CF4UXFQ77U5M',3,4,'Google, Coursera','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (46,'Operating Systems and You: Becoming a Power User','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/coursera_operating_systems_and_you_becoming_a_power_user.pdf','https://coursera.org/verify/J8JL3CM4QDDY',3,7,'Google, Coursera','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (47,'IT Security: Defense against the digital dark arts','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/coursera_it_security_defense_against_the_digital_dark_arts.pdf','https://coursera.org/verify/XWHVSN5T4YZR',3,7,'Google, Coursera','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (48,'Front-End Web UI Frameworks and Tools:Bootstrap 4','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/coursera_front_end_web_ui_frameworks_and_tools_bootstrap4.pdf','https://coursera.org/verify/3F9R3SMSJG6J',3,3,'Coursera, The Hong Kong University of Science and Technology','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (49,'Front-End Web Development with React','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/coursera_front_end_web_development_with_react.pdf','https://coursera.org/verify/25TNJTM3ATNX',3,3,'Coursera, The Hong Kong University of Science and Technology','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (50,'The International English Language Testing System(IELTS)','https://niyomwungeri.s3.us-east-2.amazonaws.com/certificates/british_council_ielts.pdf',NULL,3,2,'Coursera, The Hong Kong University of Science and Technology','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (51,'REB Confirmation of S6 Results','https://niyomwungeri.s3.us-east-2.amazonaws.com/academics/reb_s6.pdf',NULL,4,29,'REB','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (52,'High School S6 Results Slip','https://niyomwungeri.s3.us-east-2.amazonaws.com/academics/s6_bulletin.pdf',NULL,4,29,'GS St Aloys Rwamagana','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (53,'To Whom Before BSc Graduation','https://niyomwungeri.s3.us-east-2.amazonaws.com/academics/towhom_before_bsc.pdf',NULL,4,28,'University of Rwanda','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (54,'Silas Recommendation Letter 20 March 2019','https://niyomwungeri.s3.us-east-2.amazonaws.com/academics/silas_20032019.pdf',NULL,4,28,'University of Rwanda','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (55,'Silas Recommendation Letter 04 February 2019','https://niyomwungeri.s3.us-east-2.amazonaws.com/academics/silas_04022019.pdf',NULL,4,28,'University of Rwanda','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (56,'NAEB/PRICE Data Entry Clerk to whom it may concern','https://niyomwungeri.s3.us-east-2.amazonaws.com/others/naeb_price.pdf',NULL,1,1,'NAEB/PRICE','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (57,'HOD Recommendation Letter 28 May 2019','https://niyomwungeri.s3.us-east-2.amazonaws.com/academics/hod_28052019.pdf',NULL,4,28,'University of Rwanda','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (58,'HOD Recommendation Letter 08 January 2019','https://niyomwungeri.s3.us-east-2.amazonaws.com/academics/hod_08012019.pdf',NULL,4,28,'University of Rwanda','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (59,'National ID Card','https://niyomwungeri.s3.us-east-2.amazonaws.com/identification/n_id.pdf',NULL,5,16,'NIDA','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (60,'Criminal Record Clearance','https://niyomwungeri.s3.us-east-2.amazonaws.com/identification/no_criminal_record.pdf',NULL,5,18,'NPPA','2022-01-16','2022-01-16');
INSERT INTO aboutdocs VALUES (61,'Second Passport','https://niyomwungeri.s3.us-east-2.amazonaws.com/identification/second_passport.pdf',NULL,5,17,'Migration','2022-01-16','2022-01-16');
