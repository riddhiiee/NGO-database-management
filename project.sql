create database ngo
use ngo

create table donor(
	donor_id int primary key,
	name varchar(50) not null,
	email varchar(50)unique not null,
	phone varchar(15) not null,
	address varchar(150))
    
create table donation(
	donation_id int primary key,
	donor_id int,
	amount decimal(10,2) not null,
	date date not null,
	purpose varchar(50) not null,
    constraint fk_donor foreign key(donor_id) references donor(donor_id) ON DELETE CASCADE)

Alter table donation rename column date to donation_date

create table volunteer(
	volunteer_id int primary key,
	name varchar(20) not null,
	email varchar(50) unique not null,
	phone varchar(15) not null ,
	address varchar(150) not null,
	skills varchar(100),
	reason varchar(100) not null,
	joining_date date not null)

create table students(
	student_id int primary key,
	student_name varchar(20) not null,
	admission_date date not null,
	student_age int,
	student_grade varchar(10) not null,
	student_gender varchar(6),
	student_address varchar(150) not null,
	special_needs varchar(100),
	hobby varchar(100),
	contact varchar(150) not null)
 
create table transactions(
	transaction_id numeric(5) primary key,
    transaction_type ENUM('Credit','Debit'),
    amount numeric(5,2),
    transaction_date date not null,
    purpose varchar(50),
    donation_id int(20))

alter table transactions
add constraint fk_donation foreign key(donation_id) references donation(donation_id) ON DELETE CASCADE

create table staff(
	staff_id int primary key,
	staff_name varchar(30) not null,
	staff_role varchar(50) not null,
	staff_gender varchar(6),
	age int, 
	hire_date date not null,
	staff_email varchar(50)unique not null,
	phone_no varchar(15)unique not null,
	salary decimal(10,2),
	staff_address varchar(150)not null)
    
insert into donor values
	(1, 'Amit Sharma', 'amit.sharma@gmail.com', '9876543210', 'Mumbai, India'),
	(2, 'Priya Desai', 'priya.desai@gmail.com', '9876543211', 'Pune, India'),
	(3, 'Rohan Mehta', 'rohan.mehta@gmail.com', '9876543212', 'Delhi, India'),
	(4, 'Sonia Kapoor', 'sonia.kapoor@gmail.com', '9876543213', 'Bangalore, India'),
	(5, 'Vikram Malhotra', 'vikram.malhotra@gmail.com', '9876543214', 'Hyderabad, India'),
	(6, 'Neha Verma', 'neha.verma@gmail.com', '9876543215', 'Chennai, India'),
	(7, 'Anil Joshi', 'anil.joshi@gmail.com', '9876543216', 'Kolkata, India'),
	(8, 'Deepa Nair', 'deepa.nair@gmail.com', '9876543217', 'Jaipur, India'),
	(9, 'Karan Singh', 'karan.singh@gmail.com', '9876543218', 'Ahmedabad, India'),
	(10, 'Meera Iyer', 'meera.iyer@gmail.com', '9876543219', 'Indore, India'),
	(11, 'Rajiv Menon', 'rajiv.menon@gmail.com', '9876543220', 'Lucknow, India'),
	(12, 'Tina D\'Souza', 'tina.dsouza@gmail.com', '9876543221', 'Chandigarh, India'),
	(13, 'Arjun Patil', 'arjun.patil@gmail.com', '9876543222', 'Nagpur, India'),
	(14, 'Sakshi Thakur', 'sakshi.thakur@gmail.com', '9876543223', 'Patna, India'),
	(15, 'Varun Saxena', 'varun.saxena@gmail.com', '9876543224', 'Surat, India'),
	(16, 'Maya Gupta', 'maya.gupta@gmail.com', '9876543225', 'Bhopal, India'),
	(17, 'Nitin Rao', 'nitin.rao@gmail.com', '9876543226', 'Kochi, India'),
	(18, 'Pooja Mishra', 'pooja.mishra@gmail.com', '9876543227', 'Vishakhapatnam, India'),
	(19, 'Rahul Khanna', 'rahul.khanna@gmail.com', '9876543228', 'Thane, India'),
	(20, 'Sneha Pillai', 'sneha.pillai@gmail.com', '9876543229', 'Nashik, India'),
	(21, 'Ajay Bhatia', 'ajay.bhatia@gmail.com', '9876543230', 'Vadodara, India'),
	(22, 'Swati Chawla', 'swati.chawla@gmail.com', '9876543231', 'Guwahati, India'),
	(23, 'Manoj Agarwal', 'manoj.agarwal@gmail.com', '9876543232', 'Jodhpur, India'),
	(24, 'Preeti Sinha', 'preeti.sinha@gmail.com', '9876543233', 'Raipur, India'),
	(25, 'Gaurav Pandey', 'gaurav.pandey@gmail.com', '9876543234', 'Meerut, India'),
	(26, 'Ritika Das', 'ritika.das@gmail.com', '9876543235', 'Ranchi, India'),
	(27, 'Vivek Arora', 'vivek.arora@gmail.com', '9876543236', 'Mysore, India'),
	(28, 'Kavita Reddy', 'kavita.reddy@gmail.com', '9876543237', 'Shimla, India'),
	(29, 'Suresh Nanda', 'suresh.nanda@gmail.com', '9876543238', 'Dehradun, India'),
	(30, 'Pallavi Sen', 'pallavi.sen@gmail.com', '9876543239', 'Amritsar, India')

select * from donor

insert into donation values
	(1, 1, 5000.00, '2024-01-15', 'Education'),
	(2, 2, 3000.50, '2024-02-10', 'Food Drive'),
	(3, 3, 7000.00, '2024-02-20', 'Medical Aid'),
	(4, 4, 2000.00, '2024-03-05', 'School Supplies'),
	(5, 5, 4500.75, '2024-03-15', 'Infrastructure'),
	(6, 6, 3500.00, '2024-04-01', 'Education'),
	(7, 7, 6000.00, '2024-04-10', 'Medical Aid'),
	(8, 8, 2800.50, '2024-04-25', 'Food Drive'),
	(9, 9, 8000.00, '2024-05-10', 'Education'),
	(10, 10, 2200.25, '2024-05-15', 'School Supplies'),
	(11, 11, 5000.00, '2024-06-01', 'Medical Aid'),
	(12, 12, 3200.75, '2024-06-10', 'Infrastructure'),
	(13, 13, 4100.00, '2024-06-20', 'Food Drive'),
	(14, 14, 6900.50, '2024-07-01', 'Education'),
	(15, 15, 5500.00, '2024-07-15', 'Medical Aid'),
	(16, 16, 2900.75, '2024-07-25', 'School Supplies'),
	(17, 17, 4300.00, '2024-08-05', 'Infrastructure'),
	(18, 18, 3800.50, '2024-08-15', 'Food Drive'),
	(19, 19, 7300.00, '2024-09-01', 'Education'),
	(20, 20, 6100.25, '2024-09-10', 'Medical Aid'),
	(21, 21, 4500.00, '2024-09-20', 'Infrastructure'),
	(22, 22, 3300.75, '2024-10-01', 'School Supplies'),
	(23, 23, 7000.00, '2024-10-15', 'Food Drive'),
	(24, 24, 5200.50, '2024-10-25', 'Medical Aid'),
	(25, 25, 3900.00, '2024-11-05', 'Education'),
	(26, 26, 2800.75, '2024-11-15', 'Food Drive'),
	(27, 27, 4800.00, '2024-11-25', 'Infrastructure'),
	(28, 28, 5300.50, '2024-12-01', 'School Supplies'),
	(29, 29, 7500.00, '2024-12-10', 'Medical Aid'),
	(30, 30, 6200.25, '2024-12-15', 'Education'),
	(31, 5, 5400.00, '2024-12-20', 'Infrastructure'),
	(32, 8, 3200.75, '2024-12-25', 'Food Drive'),
	(33, 3, 7500.00, '2025-01-05', 'Medical Aid'),
	(34, 11, 6700.50, '2025-01-10', 'Education'),
	(35, 16, 4000.00, '2025-01-15', 'School Supplies'),
	(36, 19, 2900.75, '2025-01-20', 'Food Drive'),
	(37, 21, 4900.00, '2025-01-25', 'Infrastructure'),
	(38, 25, 3800.50, '2025-02-01', 'Medical Aid'),
	(39, 29, 6100.00, '2025-02-10', 'Education'),
	(40, 30, 7300.25, '2025-02-15', 'School Supplies'),
	(41, 2, 4600.00, '2025-02-20', 'Food Drive'),
	(42, 9, 2800.75, '2025-02-25', 'Medical Aid'),
	(43, 7, 5800.00, '2025-03-01', 'Education'),
	(44, 14, 4100.50, '2025-03-05', 'Infrastructure'),
	(45, 17, 3500.00, '2025-03-10', 'Food Drive'),
	(46, 23, 6200.75, '2025-03-15', 'Medical Aid'),
	(47, 27, 7200.00, '2025-03-20', 'Education'),
	(48, 10, 4300.25, '2025-03-25', 'School Supplies'),
	(49, 18, 5000.00, '2025-04-01', 'Infrastructure'),
	(50, 22, 5900.50, '2025-04-05', 'Medical Aid')

insert into transactions values
	(1, 'Debit', 5500.00, '2025-02-01', 'School Supplies Purchase', NULL),
	(2, 'Credit', 3500.00, '2024-04-01', 'Donation', 6),
	(3, 'Credit', 3900.00, '2024-11-05', 'Donation', 25),
	(4, 'Debit', 2700.00, '2025-04-01', 'Playground Equipment', NULL),
	(5, 'Credit', 6900.50, '2024-07-01', 'Donation', 14),
	(6, 'Debit', 5800.00, '2025-03-20', 'Rent Payment', NULL),
	(7, 'Debit', 2900.75, '2025-07-01', 'Guest Lectures', NULL),
	(8, 'Debit', 4100.50, '2025-02-03', 'Infrastructure Upgrade', NULL),
	(9, 'Credit', 2800.75, '2024-11-15', 'Donation', 26),
	(10, 'Debit', 4200.00, '2025-03-01', 'Electricity Bill', NULL),
	(11, 'Credit', 3300.75, '2024-10-01', 'Donation', 22),
	(12, 'Debit', 3800.00, '2025-05-15', 'Festival Celebration', NULL),
	(13, 'Credit', 5000.00, '2024-01-15', 'Donation', 1),
	(14, 'Debit', 3500.25, '2025-08-20', 'Transportation Costs', NULL),
	(15, 'Debit', 6100.00, '2025-03-10', 'Transportation for Students', NULL),
	(16, 'Debit', 2800.75, '2025-09-05', 'Emergency Relief Fund', NULL),
	(17, 'Credit', 7000.00, '2024-02-20', 'Donation', 3),
	(18, 'Debit', 4600.25, '2025-07-10', 'Sports Equipment', NULL),
	(19, 'Debit', 3700.00, '2025-02-04', 'Student Scholarship', NULL),
	(20, 'Debit', 6100.00, '2025-08-15', 'New Books for Students', NULL),
	(21, 'Debit', 2900.75, '2025-02-25', 'Annual Day Event', NULL),
	(22, 'Credit', 2900.75, '2024-07-25', 'Donation', 16),
	(23, 'Debit', 4700.00, '2025-07-20', 'NGO Volunteer Training', NULL),
	(24, 'Debit', 3200.00, '2025-02-10', 'New Desks and Chairs', NULL),
	(25, 'Credit', 6200.25, '2024-12-15', 'Donation', 30),
	(26, 'Debit', 4300.50, '2025-09-01', 'Event Sponsorship', NULL),
	(27, 'Credit', 8000.00, '2024-05-10', 'Donation', 9),
	(28, 'Debit', 3200.00, '2025-07-15', 'Scholarship Payment', NULL),
	(29, 'Debit', 2800.25, '2025-04-25', 'Community Service', NULL),
	(30, 'Debit', 5500.50, '2025-02-20', 'Library Books', NULL),
	(31, 'Credit', 3200.75, '2024-06-10', 'Donation', 12),
	(32, 'Debit', 3800.50, '2025-08-10', 'Staff Training', NULL),
	(33, 'Credit', 7300.00, '2024-09-01', 'Donation', 19),
	(34, 'Debit', 5800.00, '2025-08-25', 'Electricity & Water Bills', NULL),
	(35, 'Credit', 7000.00, '2024-10-15', 'Donation', 23),
	(36, 'Credit', 4100.00, '2024-06-20', 'Donation', 13),
	(37, 'Credit', 3800.50, '2024-08-15', 'Donation', 18),
	(38, 'Credit', 4500.75, '2024-03-15', 'Donation', 5),
	(39, 'Debit', 5500.00, '2025-07-05', 'Skill Development', NULL),
	(40, 'Credit', 3000.50, '2024-02-10', 'Donation', 2),
	(41, 'Debit', 3800.50, '2025-03-05', 'Water Supply Expenses', NULL),
	(42, 'Credit', 2800.50, '2024-04-25', 'Donation', 8),
	(43, 'Debit', 4700.50, '2025-05-01', 'IT Equipment', NULL),
	(44, 'Debit', 4500.00, '2025-04-10', 'Food Distribution', NULL),
	(45, 'Debit', 4200.00, '2025-08-05', 'Educational Supplies', NULL),
	(46, 'Credit', 2200.25, '2024-05-15', 'Donation', 10),
	(47, 'Credit', 4800.00, '2024-11-25', 'Donation', 27),
	(48, 'Credit', 6100.25, '2024-09-10', 'Donation', 20),
	(49, 'Debit', 5300.00, '2025-05-05', 'Projector for Classes', NULL),
	(50, 'Credit', 7500.00, '2024-12-10', 'Donation', 29),
	(51, 'Credit', 4500.00, '2024-09-20', 'Donation', 21),
	(52, 'Debit', 4400.75, '2025-06-01', 'Food Drive', NULL),
	(53, 'Credit', 6000.00, '2024-04-10', 'Donation', 7),
	(54,'Debit', 4600.25, '2025-02-02', 'Medical Aid', NULL),
	(55, 'Debit', 2700.50, '2025-05-20', 'Printing Costs', NULL),
	(56, 'Debit', 3500.25, '2025-03-15', 'Teaching Materials', NULL),
	(57, 'Credit', 5000.00, '2024-06-01', 'Donation', 11),
	(58, 'Credit', 4300.00, '2024-08-05', 'Donation', 17),
	(59, 'Debit', 4700.00, '2025-02-15', 'Health Camp', NULL),
	(60, 'Debit', 5100.00, '2025-05-25', 'Emergency Fund', NULL),
	(61, 'Debit', 6300.50, '2025-06-10', 'Event Promotion', NULL),
	(62, 'Credit', 5300.50, '2024-12-01', 'Donation', 28),
	(63, 'Credit', 5500.00, '2024-07-15', 'Donation', 15),
	(64, 'Debit', 3900.00, '2025-04-20', 'NGO Awareness Program', NULL),
	(65, 'Credit', 5200.50, '2024-10-25', 'Donation', 24),
	(66, 'Debit', 3200.50, '2025-04-15', 'Office Stationery', NULL),
	(67, 'Debit', 2900.75, '2025-08-01', 'Medical Aid for Children', NULL),
	(68, 'Credit', 2000.00, '2024-03-05', 'Donation', 4),
	(69, 'Debit', 4900.75, '2025-05-10', 'Internet Bills', NULL),
	(70, 'Debit', 3700.00, '2025-06-05', 'Student Uniforms', NULL),
	(71, 'Debit', 2800.75, '2025-02-05', 'Cultural Program', NULL),
	(72, 'Debit', 3100.50, '2025-06-25', 'First Aid Kits', NULL),
	(73, 'Debit', 5200.00, '2025-06-15', 'Volunteer Training', NULL),
	(74, 'Debit', 5100.75, '2025-04-05', 'Teacher Salaries', NULL),
	(75, 'Debit', 4300.50, '2025-03-25', 'Medical Supplies', NULL),
	(76, 'Debit', 3900.25, '2025-06-20', 'Hygiene Kits', NULL),
	(77, 'Debit', 5500.50, '2025-07-25', 'Infrastructure Development', NULL)

alter table transactions modify column amount decimal(10,2)

insert into staff values
	(1, 'Amit Verma', 'Manager', 'Male', 40, '2022-05-10', 'amit.verma@ngo.org', '9876543100', 33000.00, 'Mumbai, India'),
	(2, 'Priya Sharma', 'Coordinator', 'Female', 35, '2021-07-15', 'priya.sharma@ngo.org', '9876543101', 15000.00, 'Mumbai, India'),
	(3, 'Ravi Mehta', 'Field Officer', 'Male', 30, '2023-03-01', 'ravi.mehta@ngo.org', '9876543102', 15000.00, 'Mumbai, India'),
	(4, 'Anita Kapoor', 'Accountant', 'Female', 28, '2022-09-20', 'anita.kapoor@ngo.org', '9876543103', 45000.00, 'Mumbai, India'),
	(5, 'Vikas Malhotra', 'HR', 'Male', 38, '2020-12-05', 'vikas.malhotra@ngo.org', '9876543104', 55000.00, 'Mumbai, India'),
	(6, 'Sonia Thakur', 'Teacher', 'Female', 32, '2021-11-10', 'sonia.thakur@ngo.org', '9876543105', 25000.00, 'Mumbai, India'),
	(7, 'Manoj Kumar', 'Security Guard', 'Male', 45, '2019-08-25', 'manoj.kumar@ngo.org', '9876543106', 8000.00, 'Mumbai, India'),
	(8, 'Neha Verma', 'Social Worker', 'Female', 29, '2023-01-15', 'neha.verma@ngo.org', '9876543107', 5000.00, 'Mumbai, India'),
	(9, 'Anil Joshi', 'Project Coordinator', 'Male', 42, '2020-06-30', 'anil.joshi@ngo.org', '9876543108', 3900.00, 'Mumbai, India'),
	(10, 'Deepa Nair', 'Counselor', 'Female', 36, '2021-04-22', 'deepa.nair@ngo.org', '9876543109', 10000.00, 'Mumbai, India'),
	(11, 'Karan Singh', 'Logistics Manager', 'Male', 39, '2018-10-10', 'karan.singh@ngo.org', '9876543110', 11000.00, 'Mumbai, India'),
	(12, 'Meera Iyer', 'PR Manager', 'Female', 33, '2019-12-15', 'meera.iyer@ngo.org', '9876543111', 26000.00, 'Mumbai, India'),
	(13, 'Rajiv Menon', 'IT Support', 'Male', 27, '2023-07-20', 'rajiv.menon@ngo.org', '9876543112', 22000.00, 'Mumbai, India'),
	(14, 'Tina D\'Souza', 'Event Manager', 'Female', 31, '2022-03-18', 'tina.dsouza@ngo.org', '9876543113', 3900.00, 'Mumbai, India'),
	(15, 'Arjun Patil', 'Trainer', 'Male', 37, '2017-05-05', 'arjun.patil@ngo.org', '9876543114', 5000.00, 'Mumbai, India')
    

insert into students values
	(1, 'Aarav Sharma', '2022-06-15', 10, '5th', 'Male', 'Andheri, Mumbai', NULL, 'Painting', 'aarav@gmail.com, 9876543210'),
	(2, 'Ishaan Verma', '2021-07-20', 9, '4th', 'Male', 'Bandra, Mumbai', 'Dyslexia', 'Chess', 'ishaan@gmail.com, 9876543211'),
	(3, 'Ananya Gupta', '2023-05-10', 8, '3rd', 'Female', 'Juhu, Mumbai', NULL, 'Singing', 'ananya@gmail.com, 9876543212'),
	(4, 'Vihaan Malhotra', '2020-03-18', 7, '2nd', 'Male', 'Goregaon, Mumbai', 'Hearing Impairment', 'Dancing', 'vihaan@gmail.com, 9876543213'),
	(5, 'Sanya Mehta', '2019-12-05', 6, '1st', 'Female', 'Kandivali, Mumbai', NULL, 'Drawing', 'sanya@gmail.com, 9876543214'),
	(6, 'Kabir Bhatia', '2022-08-19', 10, '5th', 'Male', 'Borivali, Mumbai', 'ADHD', 'Cycling', 'kabir@gmail.com, 9876543215'),
	(7, 'Riya Chopra', '2021-11-30', 9, '4th', 'Female', 'Vile Parle, Mumbai', NULL, 'Photography', 'riya@gmail.com, 9876543216'),
	(8, 'Arjun Kapoor', '2023-06-25', 8, '3rd', 'Male', 'Santacruz, Mumbai', NULL, 'Football', 'arjun@gmail.com, 9876543217'),
	(9, 'Tia Jain', '2020-03-14', 7, '2nd', 'Female', 'Malad, Mumbai', 'Visual Impairment', 'Reading', 'tia@gmail.com, 9876543218'),
	(10, 'Rohan Singh', '2019-09-09', 6, '1st', 'Male', 'Powai, Mumbai', NULL, 'Swimming', 'rohan@gmail.com, 9876543219'),
	(11, 'Aditi Ahuja', '2022-01-22', 10, '5th', 'Female', 'Dadar, Mumbai', NULL, 'Badminton', 'aditi@gmail.com, 9876543220'),
	(12, 'Yuvan Dutta', '2021-04-17', 9, '4th', 'Male', 'Worli, Mumbai', 'Autism', 'Piano', 'yuvan@gmail.com, 9876543221'),
	(13, 'Simran Nair', '2023-10-12', 8, '3rd', 'Female', 'Lower Parel, Mumbai', NULL, 'Writing', 'simran@gmail.com, 9876543222'),
	(14, 'Reyansh Pillai', '2020-07-07', 7, '2nd', 'Male', 'Churchgate, Mumbai', NULL, 'Sketching', 'reyansh@gmail.com, 9876543223'),
	(15, 'Meera Desai', '2019-05-03', 6, '1st', 'Female', 'Marine Lines, Mumbai', NULL, 'Yoga', 'meera@gmail.com, 9876543224'),
	(16, 'Dev Joshi', '2022-06-11', 10, '5th', 'Male', 'Sion, Mumbai', 'Speech Delay', 'Table Tennis', 'dev@gmail.com, 9876543225'),
	(17, 'Kiara Seth', '2021-09-23', 9, '4th', 'Female', 'Kurla, Mumbai', NULL, 'Cooking', 'kiara@gmail.com, 9876543226'),
	(18, 'Manav Rastogi', '2023-08-29', 8, '3rd', 'Male', 'Chembur, Mumbai', NULL, 'Guitar', 'manav@gmail.com, 9876543227'),
	(19, 'Suhana Khanna', '2020-11-18', 7, '2nd', 'Female', 'Mulund, Mumbai', 'Hearing Impairment', 'Dancing', 'suhana@gmail.com, 9876543228'),
	(20, 'Aryan Taneja', '2019-04-20', 6, '1st', 'Male', 'Ghatkopar, Mumbai', NULL, 'Origami', 'aryan@gmail.com, 9876543229'),
	(21, 'Zara Bajaj', '2022-02-07', 10, '5th', 'Female', 'Thane, Mumbai', NULL, 'Running', 'zara@gmail.com, 9876543230'),
	(22, 'Vivaan Grover', '2021-12-16', 9, '4th', 'Male', 'Mira Road, Mumbai', NULL, 'Painting', 'vivaan@gmail.com, 9876543231'),
	(23, 'Nisha Kumar', '2023-07-13', 8, '3rd', 'Female', 'Bhendi Bazaar, Mumbai', NULL, 'Skating', 'nisha@gmail.com, 9876543232'),
	(24, 'Aditya Saxena', '2020-05-30', 7, '2nd', 'Male', 'Mazgaon, Mumbai', NULL, 'Kite Flying', 'aditya@gmail.com, 9876543233'),
	(25, 'Mira Shroff', '2019-08-08', 6, '1st', 'Female', 'Byculla, Mumbai', 'Speech Therapy', 'Storytelling', 'mira@gmail.com, 9876543234'),
	(26, 'Eshan Bansal', '2022-03-25', 10, '5th', 'Male', 'Kalyan, Mumbai', NULL, 'Cricket', 'eshan@gmail.com, 9876543235'),
	(27, 'Pooja Iyengar', '2021-06-28', 9, '4th', 'Female', 'Bhandup, Mumbai', NULL, 'Volleyball', 'pooja@gmail.com, 9876543236'),
	(28, 'Rudra Menon', '2023-01-14', 8, '3rd', 'Male', 'Khar, Mumbai', NULL, 'Magic Tricks', 'rudra@gmail.com, 9876543237'),
	(29, 'Tanvi Sarin', '2020-09-22', 7, '2nd', 'Female', 'Jogeshwari, Mumbai', NULL, 'Doll Making', 'tanvi@gmail.com, 9876543238'),
	(30, 'Kian Oberoi', '2019-02-10', 6, '1st', 'Male', 'Tardeo, Mumbai', NULL, 'Puzzle Solving', 'kian@gmail.com, 9876543239')

insert into volunteer values
	(1, 'Aryan D\'Souza', 'aryan.dsouza@ngo.org', '9876544001', 'Mumbai, India', 'Teaching, Storytelling', 'Passionate about education', '2023-04-10'),
	(2, 'Farhan Shaikh', 'farhan.shaikh@ngo.org', '9876544002', 'Mumbai, India', 'Event Planning, Public Speaking', 'Wants to uplift the community', '2022-07-05'),
	(3, 'Esha Bhattacharya', 'esha.bhattacharya@ngo.org', '9876544003', 'Mumbai, India', 'Music, Dance', 'Believes in art therapy', '2021-08-15'),
	(4, 'Kabir Chavan', 'kabir.chavan@ngo.org', '9876544004', 'Mumbai, India', 'Sports Training', 'Wants to promote fitness among kids', '2023-05-20'),
	(5, 'Ridhima Gokhale', 'ridhima.gokhale@ngo.org', '9876544005', 'Mumbai, India', 'Fundraising, Social Media', 'Loves spreading awareness', '2022-09-30'),
	(6, 'Shantanu Joshi', 'shantanu.joshi@ngo.org', '9876544006', 'Mumbai, India', 'Counseling, Mental Health', 'Supports emotional well-being', '2023-02-25'),
	(7, 'Zoya Merchant', 'zoya.merchant@ngo.org', '9876544007', 'Mumbai, India', 'Photography, Journalism', 'Wants to capture untold stories', '2021-06-10'),
	(8, 'Vivaan Thakur', 'vivaan.thakur@ngo.org', '9876544008', 'Mumbai, India', 'Coding, Robotics', 'Encourages STEM learning', '2023-09-18'),
	(9, 'Mehak Purohit', 'mehak.purohit@ngo.org', '9876544009', 'Mumbai, India', 'Cooking, Nutrition', 'Believes in healthy eating', '2022-12-05'),
	(10, 'Devendra Kulkarni', 'devendra.kulkarni@ngo.org', '9876544010', 'Mumbai, India', 'Legal Aid, Rights Awareness', 'Wants to fight for justice', '2021-11-25')

create table student_volunteer (
    student_id int,
    volunteer_id int,
    primary key (student_id, volunteer_id),
    foreign key (student_id) references students(student_id) ON DELETE CASCADE,
    foreign key (volunteer_id) references volunteer(volunteer_id) ON DELETE CASCADE
);

insert into student_volunteer (student_id, volunteer_id) values
(1, 3), (1, 5),   -- Aarav Sharma assisted by Esha Bhattacharya & Ridhima Gokhale
(2, 1), (2, 4),   -- Ishaan Verma assisted by Aryan D'Souza & Kabir Chavan
(3, 4), (3, 6),   -- Ananya Gupta assisted by Kabir Chavan & Shantanu Joshi
(4, 2), (4, 7),   -- Vihaan Malhotra assisted by Farhan Shaikh & Zoya Merchant
(5, 8),          -- Sanya Mehta assisted by Vivaan Thakur
(6, 5), (6, 9),   -- Kabir Bhatia assisted by Ridhima Gokhale & Mehak Purohit
(7, 6),          -- Riya Chopra assisted by Shantanu Joshi
(8, 7), (8, 10),  -- Arjun Kapoor assisted by Zoya Merchant & Devendra Kulkarni
(9, 7),          -- Tia Jain assisted by Zoya Merchant
(10, 3),         -- Rohan Singh assisted by Esha Bhattacharya
(11, 8),         -- Aditi Ahuja assisted by Vivaan Thakur
(12, 2), (12, 9), -- Yuvan Dutta assisted by Farhan Shaikh & Mehak Purohit
(13, 4),         -- Simran Nair assisted by Kabir Chavan
(14, 5),         -- Reyansh Pillai assisted by Ridhima Gokhale
(15, 6),         -- Meera Desai assisted by Shantanu Joshi
(16, 7),         -- Dev Joshi assisted by Zoya Merchant
(17, 8),         -- Kiara Seth assisted by Vivaan Thakur
(18, 10),        -- Manav Rastogi assisted by Devendra Kulkarni
(19, 1),         -- Suhana Khanna assisted by Aryan D'Souza
(20, 2),         -- Aryan Taneja assisted by Farhan Shaikh
(21, 3),         -- Zara Bajaj assisted by Esha Bhattacharya
(22, 4),         -- Vivaan Grover assisted by Kabir Chavan
(23, 5),         -- Nisha Kumar assisted by Ridhima Gokhale
(24, 6),         -- Aditya Saxena assisted by Shantanu Joshi
(25, 7);         -- Mira Shroff assisted by Zoya Merchant

-- QUERIES

-- Monthly Donations Received
select year(donation_date) as year, month(donation_date) as month, sum(amount) as total_donations from donation  
group by year(donation_date), month(donation_date) order by year, month

-- Top 5 Donors who contributed the most
select donor_id, sum(amount) as total_donated from donation 
group by donor_id 
order by total_donated desc
limit 5

-- 	total funds utlization
select transaction_type, SUM(amount) as total_spent from transactions where transaction_type = 'Debit' 
group by transaction_type order by total_spent desc;

-- skills of volunteers
select skills, count(*) as volunteer_count from volunteer group by skills

-- find students who have been assigned more than one volunteer
select students.student_name, count(student_volunteer.volunteer_id) as volunteer_count 
from students join student_volunteer on students.student_id = student_volunteer.student_id
group by students.student_name
having count(student_volunteer.volunteer_id) > 1;

-- calculate the total salary paid to male and female staff separately                                                                                       
select staff_gender, sum(salary) as total_salary
from staff
group by staff_gender;

-- male and female staff
select staff_gender, count(staff_gender) as count from staff group by staff_gender 

-- get the percentage of donations contributed by each donor                                                                                                                                  
select donor_id, (sum(amount) * 100) / (select sum(amount) from donation) as percentage_contributed from donation
group by donor_id order by percentage_contributed desc
 
-- Donation vs Expense
select month(transaction_date) as month,  
sum(case when transaction_type  = 'Credit' then amount else 0 end) as total_donations,  
sum(case when transaction_type = 'Debit' then amount else 0 end) as total_expenses  
from transactions group by year(transaction_date), month(transaction_date)  
order by month

-- Categorize donation based on size
select donation_id, amount,
case 
    when amount < 3000 then 'Small'
    when amount between 3000 and 7000 then 'Medium'
    else 'Large'
end as donation_category
from donation

-- recent transaction based on purpose
select purpose, max(transaction_date) as latest_transaction
from transactions
group by purpose


-- max transaction 
select purpose, sum(amount) as amount from transactions where transaction_type = 'Debit' 
group by purpose
order by amount desc

-- Special needs
select special_needs, count(*) as total_students  
from students group by special_needs;

-- total ngo summary
select  
(select count(*) from students) as total_students,  
(select count(*) from staff) as total_staff,  
(select count(*) from volunteer) as total_volunteers,  
(select sum(amount) from donation) as total_donations_received,  
(select sum(amount) from transactions where transaction_type = 'Debit') as total_expenses;

-- volunteer experience
select name, timestampdiff(year, joining_date, curdate()) as experience_years  
from volunteer  
order by experience_years desc
limit 10

-- donor address 
select address, count(donor_id) as donor_count 
from donor group by address  

-- students days enrolled
select student_name, admission_date,  
year(admission_date) as batch_year, datediff(curdate(), admission_date) as days_enrolled  
from students order by admission_date

-- grade wise students
select student_grade, count(student_id) from students
group by student_grade

-- avg donation per donor
select donor_id, avg(amount) as avg_donation from donation  
group by donor_id order by avg_donation desc;

-- donations each month
select month(donation_date) as month, sum(amount) as total_donations  
from donation group by month(donation_date)  
order by total_donations desc






