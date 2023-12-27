/* Создать sql-скрипт для заполнения базы данных записями (минимум 3 записи на таблицу). */

USE Hospital;

INSERT INTO Rooms (room_number, bed_count, department, occupied_beds, last_update_date, gender) VALUES
(1, 2, 'Epidemiology', 1, '2023-11-01', 'male'),
(2, 4, 'Cardiology', 2, '2023-11-05', 'female'),
(3, 6, 'Traumatology', 3, '2023-12-10', 'male');

INSERT INTO Doctors (doctor_id, full_name, department) VALUES
(1, 'Dr. Black', 'Epidemiology'),
(2, 'Dr. Johnson', 'Cardiology'),
(3, 'Dr. Dre', 'Traumatology');

INSERT INTO Patients (patient_id, full_name, gender, insurance_number, admission_date, room_number, treating_doctor, diagnosis, discharge_date) VALUES
(1, 'Ben Smith', 'male', '12345', '2023-09-20', 1, 1, 'Covid', NULL),
(2, 'MIlly Smith', 'female', '12346', '2023-09-21', 1, 2, 'Covid', NULL),
(3, 'Jack Rassel', 'male', '16578', '2023-09-28', 3, 3, 'Broken leg', NULL);