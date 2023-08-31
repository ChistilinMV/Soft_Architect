CREATE TABLE IF NOT EXISTS Speciality (
  id INT(11) NOT NULL AUTO_INCREMENT,
  speciality VARCHAR(150) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Medical_office (
  id INT(11) NOT NULL AUTO_INCREMENT,
  num VARCHAR(10) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (id) REFERENCES Medical_office(id)
);

CREATE TABLE IF NOT EXISTS Phones (
  id INT(11) NOT NULL AUTO_INCREMENT,
  phone_number INT(11) NOT NULL,
  office_id INT(11) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (office_id) REFERENCES Medical_office(id)
);

CREATE TABLE IF NOT EXISTS Doctor (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  surname VARCHAR(50) NOT NULL,
  speciality_id INT(11) NOT NULL,
  phone_id INT(11) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (speciality_id) REFERENCES Speciality(id),
  FOREIGN KEY (phone_id) REFERENCES Phones(id)
);

CREATE TABLE IF NOT EXISTS Shedule (
  id INT(11) NOT NULL AUTO_INCREMENT,
  appoinment_time DATETIME NOT NULL,
  office_id INT(11) NOT NULL,
  doctor_id INT(11) NOT NULL,
  patient_id INT(11) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (office_id) REFERENCES Medical_office(id),
  FOREIGN KEY (doctor_id) REFERENCES Doctor(id),
  FOREIGN KEY (patient_id) REFERENCES Patient(id)
);

CREATE TABLE IF NOT EXISTS Patient (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  surname VARCHAR(50) NOT NULL,
  age INT(11) NOT NULL,
  adress VARCHAR(255) NOT NULL,
  case_history_id INT(11) NOT NULL,
  diagnisis_id INT(11) NOT NULL,
  survey_results_id INT(11) NOT NULL,
  insurance_number VARCHAR(20) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (case_history_id) REFERENCES Case_history(id),
  FOREIGN KEY (diagnisis_id) REFERENCES Diagnosis(id),
  FOREIGN KEY (survey_results_id) REFERENCES Survey_results(id)
);

CREATE TABLE IF NOT EXISTS Case_history (
  id INT(11) NOT NULL AUTO_INCREMENT,
  history_unique_id VARCHAR(25) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Diagnosis (
  id INT(11) NOT NULL AUTO_INCREMENT,
  diagnosis VARCHAR(255) NOT NULL,
  code_id INT(11) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (code_id) REFERENCES Diagnosis_code(id)
);

CREATE TABLE IF NOT EXISTS Diagnosis_code (
  id INT(11) NOT NULL AUTO_INCREMENT,
  code VARCHAR(6) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS Survey_results (
  id INT(11) NOT NULL AUTO_INCREMENT,
  type VARCHAR(255) NOT NULL,
  survey_result TEXT NOT NULL,
  patient_id INT(11) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (patient_id) REFERENCES Patient(id)
);