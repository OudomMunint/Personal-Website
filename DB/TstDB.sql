--DROP DATABASE  IF EXISTS SQLTest2020 
--create database Bank2021
use Bank2021DB



drop table loan
drop table account
drop table branch
drop table customer
--  BANK DATABASE SCRIPT

-- CUSTOMER TABLE
CREATE TABLE CUSTOMER(
custNo		CHAR(10),			-- Unique value used to identify customer 
custName	VARCHAR(50),		-- Name of customer 
street		VARCHAR(50),		-- Street Address of customer 
suburb      VARCHAR(50),		-- Suburb of Customer
postCode    CHAR(4),			-- PostCode of Customer
telephone	CHAR(10),			-- Telephone number of customer
PRIMARY KEY(custNo))


-- BANK BRANCH TABLE
CREATE TABLE BRANCH(
branchNo	INT IDENTITY(1,1),			-- Unique number to identify branch 
branchName	VARCHAR(20) UNIQUE NOT NULL,-- Name of branch
postCode   char(4)  NOT NULL ,           -- Postcode of the Branch  
PRIMARY KEY(branchNo)) 


-- ACCOUNT TABLE
CREATE TABLE ACCOUNT(
accNo		VARCHAR(10),		-- Account number 
branchNo	INT NOT NULL,		-- Branch number to which the account belongs
custNo		CHAR(10) NOT NULL,	-- Customer who owns the account
balance		DECIMAL(12,2),				-- Current balance of account
PRIMARY KEY(accNo),		
FOREIGN KEY (branchNo) REFERENCES BRANCH, 
FOREIGN KEY (custNo) REFERENCES CUSTOMER)

 
-- LOAN TABLE
CREATE TABLE LOAN(
loanNo		VARCHAR(10),		-- Loan number which uniquely identifies the loan
branchNo	INT,				-- Branch number of branch issuing the loan
custNo		CHAR(10),			-- Customer to whom the loan is issued
amount		DECIMAL(12,2),				-- Total amount of loan
intRate		FLOAT,				-- Interest rate of loan in percent per year (i.e., per 365 days)

dateLoaned	DATE,		-- Date Loaned	
dueDate		DATE,		-- Due date of Loan 
datePaidoff	DATE,		-- Date Loan is paid off

PRIMARY KEY(loanNo),
FOREIGN KEY (branchNo) REFERENCES BRANCH,
FOREIGN KEY (custNo) REFERENCES CUSTOMER,
CONSTRAINT checkIntRate CHECK(intRate BETWEEN 0.0 AND 100.0))


-- LOADING SAMPLE DATA

-- BRANCH TABLE
INSERT INTO BRANCH(branchName, postCode) VALUES('Jesmond', '2283')
INSERT INTO BRANCH(branchName, postCode) VALUES('Newcastle','2270')
INSERT INTO BRANCH(branchName, postCode) VALUES('Maryland','2734')
INSERT INTO BRANCH(branchName, postCode) VALUES('Shortland','2519')
INSERT INTO BRANCH(branchName, postCode) VALUES('Fletcher', '2369')

-- CUSTOMER TABLE
INSERT INTO CUSTOMER VALUES('C001220001', 'John Little', '3-28 Ralph St','Jesmond', '2283','0431223311')
INSERT INTO CUSTOMER VALUES('C938874002', 'Mary Chang',  '24-20 Sunset Blvd', 'North Lambton', '2298','0234532322')
INSERT INTO CUSTOMER VALUES('C432832003', 'Kevin Mark', '23-78 Scott Street', 'Newcastle', '2270','0237436353')
INSERT INTO CUSTOMER VALUES('C232342004', 'Debbie Anderson', '23-83 Pacific Hwy', 'Maryland', '2734','0476532487')
INSERT INTO CUSTOMER VALUES('C232422005', 'Martha Marshall', '43-94 Mary Street', 'Jesmond', '2283','0491664563')
INSERT INTO CUSTOMER VALUES('C232422006', 'Jane Howard', '90 Oxford Street', 'Epping', '2121','0431764528')
INSERT INTO CUSTOMER VALUES('C232423007', 'Maya Wills', '65 EAST Street', 'EastWood', '2122','0411063628')
INSERT INTO CUSTOMER VALUES('C232424008', 'Theja Baker', '35 Ocean road', 'Newcastle', '2270','0432063521')
INSERT INTO CUSTOMER VALUES('C231433009', 'Anil Wong', '12 Park Street', 'Eastood', '2121','0411063628')


-- ACCOUNT TABLE
INSERT INTO ACCOUNT VALUES('A000001234',1,'C001220001',27800.00)
INSERT INTO ACCOUNT VALUES('A000001235',1,'C001220001',1800.00)
INSERT INTO ACCOUNT VALUES('A000002345',2,'C938874002',2800.00)
INSERT INTO ACCOUNT VALUES('A000003456',3,'C001220001',55900.00)
INSERT INTO ACCOUNT VALUES('A000004567',4,'C232342004',136625.00)
INSERT INTO ACCOUNT VALUES('A000005678',1,'C938874002',244178.00)
INSERT INTO ACCOUNT VALUES('A000006789',2,'C232342004',107050.00)
INSERT INTO ACCOUNT VALUES('A000007890',3,'C232342004',25700.00)
INSERT INTO ACCOUNT VALUES('A000007910',3,'C232423007',15700.00)

-- LOAN TABLE
INSERT INTO LOAN VALUES('L000011233',1, 'C232422005', 150000.00, 7.25,'2019-4-20','2019-12-19','2019-12-19')
INSERT INTO LOAN VALUES('L000011243',1, 'C232422005', 15000.00, 8.25,'2019-4-25','2019-11-19','2019-12-19')
INSERT INTO LOAN VALUES('L000022344',2, 'C938874002', 45000.00, 6.34,'2019-4-20','2021-1-19',NULL)
INSERT INTO LOAN VALUES('L000033453',3, 'C232342004', 1500000.00, 5.54,'2019-4-20','2020-2-19','2020-2-19')
INSERT INTO LOAN VALUES('L000033463',3, 'C232342004', 100000.00, 6.54,'2016-4-20','2019-2-19','2019-2-19')
INSERT INTO LOAN VALUES('L000033574',2, 'C232424008', 51000.00, 5.50,'2019-1-20','2019-12-19',NULL)
INSERT INTO LOAN VALUES('L000033685',2, 'C231433009', 12000.00, 6.58,'2018-4-20','2020-12-19',NULL)
INSERT INTO LOAN VALUES('L000033796',2, 'C001220001', 145100.00, 5.75,'2017-4-20','2020-4-19','2020-4-19')
--DROP DATABASE  IF EXISTS SQLTest2020 
--create database Bank2022DB
use Bank2022DB




--  BANK DATABASE SCRIPT

-- CUSTOMER TABLE
CREATE TABLE CUSTOMER(
custNo		CHAR(10),			-- Unique value used to identify customer 
custName	VARCHAR(50),		-- Name of customer 
street		VARCHAR(50),		-- Street Address of customer 
suburb      VARCHAR(50),		-- Suburb of Customer
postCode    CHAR(4),			-- PostCode of Customer
telephone	CHAR(10),			-- Telephone number of customer
PRIMARY KEY(custNo)) 


-- BANK BRANCH TABLE
CREATE TABLE BRANCH(
branchNo	INT IDENTITY(1,1),			-- Unique number to identify branch 
branchName	VARCHAR(20) UNIQUE NOT NULL,-- Name of branch
postCode   char(4)  NOT NULL ,           -- Postcode of the Branch  
PRIMARY KEY(branchNo)) 


-- ACCOUNT TABLE
CREATE TABLE ACCOUNT(
accNo		VARCHAR(10),		-- Account number 
branchNo	INT NOT NULL,		-- Branch number to which the account belongs
custNo		CHAR(10) NOT NULL,	-- Customer who owns the account
balance		DECIMAL(12,2),				-- Current balance of account
PRIMARY KEY(accNo),		
FOREIGN KEY (branchNo) REFERENCES BRANCH, 
FOREIGN KEY (custNo) REFERENCES CUSTOMER)

 
-- LOAN TABLE
CREATE TABLE LOAN(
loanNo		VARCHAR(10),		-- Loan number which uniquely identifies the loan
branchNo	INT,				-- Branch number of branch issuing the loan
custNo		CHAR(10),			-- Customer to whom the loan is issued
amount		DECIMAL(12,2),				-- Total amount of loan
intRate		FLOAT,				-- Interest rate of loan in percent per year (i.e., per 365 days)

dateLoaned	DATE,		-- Date Loaned	
dueDate		DATE,		-- Due date of Loan 
datePaidoff	DATE,		-- Date Loan is paid off

PRIMARY KEY(loanNo),
FOREIGN KEY (branchNo) REFERENCES BRANCH,
FOREIGN KEY (custNo) REFERENCES CUSTOMER,
CONSTRAINT checkIntRate CHECK(intRate BETWEEN 0.0 AND 100.0))


-- LOADING SAMPLE DATA

-- BRANCH TABLE
INSERT INTO BRANCH(branchName, postCode) VALUES('Jesmond', '2283')
INSERT INTO BRANCH(branchName, postCode) VALUES('Newcastle','2270')
INSERT INTO BRANCH(branchName, postCode) VALUES('Maryland','2734')
INSERT INTO BRANCH(branchName, postCode) VALUES('Shortland','2519')
INSERT INTO BRANCH(branchName, postCode) VALUES('Fletcher', '2369')

-- CUSTOMER TABLE
INSERT INTO CUSTOMER VALUES('C001220001', 'John Little', '3-28 Ralph St','Jesmond', '2283','0431223311')
INSERT INTO CUSTOMER VALUES('C938874002', 'Mary Chang',  '24-20 Sunset Blvd', 'North Lambton', '2298','0234532322')
INSERT INTO CUSTOMER VALUES('C432832003', 'Kevin Mark', '23-78 Scott Street', 'Newcastle', '2270','0237436353')
INSERT INTO CUSTOMER VALUES('C232342004', 'Debbie Anderson', '23-83 Pacific Hwy', 'Maryland', '2734','0476532487')
INSERT INTO CUSTOMER VALUES('C232422005', 'Martha Marshall', '43-94 Mary Street', 'Jesmond', '2283','0491664563')
INSERT INTO CUSTOMER VALUES('C232422006', 'Jane Howard', '90 Oxford Street', 'Epping', '2121','0431764528')
INSERT INTO CUSTOMER VALUES('C232423007', 'Maya Wills', '65 EAST Street', 'EastWood', '2122','0411063628')
INSERT INTO CUSTOMER VALUES('C232424008', 'Theja Baker', '35 Ocean road', 'Newcastle', '2270','0432063521')
INSERT INTO CUSTOMER VALUES('C231433009', 'Anil Wong', '12 Park Street', 'Eastood', '2121','0411063628')


-- ACCOUNT TABLE
INSERT INTO ACCOUNT VALUES('A000001234',1,'C001220001',27800.00)
INSERT INTO ACCOUNT VALUES('A000001235',1,'C001220001',1800.00)
INSERT INTO ACCOUNT VALUES('A000002345',2,'C938874002',2800.00)
INSERT INTO ACCOUNT VALUES('A000003456',3,'C001220001',55900.00)
INSERT INTO ACCOUNT VALUES('A000004567',4,'C232342004',136625.00)
INSERT INTO ACCOUNT VALUES('A000005678',1,'C938874002',244178.00)
INSERT INTO ACCOUNT VALUES('A000006789',2,'C232342004',107050.00)
INSERT INTO ACCOUNT VALUES('A000007890',3,'C232342004',25700.00)
INSERT INTO ACCOUNT VALUES('A000007910',3,'C232423007',15700.00)

-- LOAN TABLE
INSERT INTO LOAN VALUES('L000011233',1, 'C232422005', 150000.00, 7.25,'2019-4-20','2019-12-19','2019-12-19')
INSERT INTO LOAN VALUES('L000011243',1, 'C232422005', 15000.00, 8.25,'2019-4-25','2019-11-19','2019-12-19')
INSERT INTO LOAN VALUES('L000022344',2, 'C938874002', 45000.00, 6.34,'2019-4-20','2021-1-19',NULL)
INSERT INTO LOAN VALUES('L000033453',3, 'C232342004', 1500000.00, 5.54,'2019-4-20','2020-2-19','2020-2-19')
INSERT INTO LOAN VALUES('L000033463',3, 'C232342004', 100000.00, 6.54,'2016-4-20','2019-2-19','2019-2-19')
INSERT INTO LOAN VALUES('L000033574',2, 'C232424008', 51000.00, 5.50,'2019-1-20','2019-12-19',NULL)
INSERT INTO LOAN VALUES('L000033685',2, 'C231433009', 12000.00, 6.58,'2018-4-20','2020-12-19',NULL)
INSERT INTO LOAN VALUES('L000033796',2, 'C001220001', 145100.00, 5.75,'2017-4-20','2020-4-19','2020-4-19')





--Query to push to TST and QA

--For analyzing
select * from BRANCH
select * From ACCOUNT
select * from CUSTOMER
Select * from LOAN

--Print branch name and show account number.

select Branch.branchName, ACCOUNT.branchNo, ACCOUNT.accNo from BRANCH, ACCOUNT
group by branchName, accNo, account.branchNo
order by COUNT(accNo)

--Print branch name and number of account in the branch.
--Sorry if i misunderstood the question and sorry for any inconviniences.

select Branch.branchName, ACCOUNT.accNo, count(accNo) as 'NumberOfAccInBranch' from ACCOUNT, BRANCH
group by branchName, accNo 

--Print customer number and name that has loan in the same bank as "Mary Chang" excluding "Mary Chang"

select Customer.custNo, CUSTOMER.custName, BRANCH.branchNo from CUSTOMER, BRANCH where branchNo = '2' and custNo <> 'C938874002'
group by custNo, custName, branchNo

-- Print Loan number and name of customer who have paid their loans.

select loanNO, CUSTOMER.custName from LOAN, CUSTOMER where datePaidoff is not null

--If datePaidOff specidifed, print Loan number and customer number, name in descending order.

select loanNO, Customer.custNo, CUSTOMER.custName, datePaidoff from LOAN, CUSTOMER where datePaidoff is not null
order by (custName) DESC;

--Calculate and print Bank's average account balance

Select AVG(balance) as 'Banks average balance'
from ACCOUNT

--DROP DATABASE  IF EXISTS SQLTest2020 
--create database Bank2021AccMgmt
use Bank2021AccMgmt




-- BANK DATABASE SCRIPT

-- CUSTOMER TABLE
CREATE TABLE CUSTOMER(
custNo		CHAR(10),			-- Unique value used to identify customer 
custName	VARCHAR(50),		-- Name of customer 
street		VARCHAR(50),		-- Street Address of customer 
suburb      VARCHAR(50),		-- Suburb of Customer
postCode    CHAR(4),			-- PostCode of Customer
telephone	CHAR(10),			-- Telephone number of customer
PRIMARY KEY(custNo)) 


-- BANK BRANCH TABLE
CREATE TABLE BRANCH(
branchNo	INT IDENTITY(1,1),			-- Unique number to identify branch 
branchName	VARCHAR(20) UNIQUE NOT NULL,-- Name of branch
postCode   char(4)  NOT NULL ,           -- Postcode of the Branch  
PRIMARY KEY(branchNo)) 


-- ACCOUNT TABLE
CREATE TABLE ACCOUNT(
accNo		VARCHAR(10),		-- Account number 
branchNo	INT NOT NULL,		-- Branch number to which the account belongs
custNo		CHAR(10) NOT NULL,	-- Customer who owns the account
balance		DECIMAL(12,2),				-- Current balance of account
PRIMARY KEY(accNo),		
FOREIGN KEY (branchNo) REFERENCES BRANCH, 
FOREIGN KEY (custNo) REFERENCES CUSTOMER)

 
-- LOAN TABLE
CREATE TABLE LOAN(
loanNo		VARCHAR(10),		-- Loan number which uniquely identifies the loan
branchNo	INT,				-- Branch number of branch issuing the loan
custNo		CHAR(10),			-- Customer to whom the loan is issued
amount		DECIMAL(12,2),				-- Total amount of loan
intRate		FLOAT,				-- Interest rate of loan in percent per year (i.e., per 365 days)

dateLoaned	DATE,		-- Date Loaned	
dueDate		DATE,		-- Due date of Loan 
datePaidoff	DATE,		-- Date Loan is paid off

PRIMARY KEY(loanNo),
FOREIGN KEY (branchNo) REFERENCES BRANCH,
FOREIGN KEY (custNo) REFERENCES CUSTOMER,
CONSTRAINT checkIntRate CHECK(intRate BETWEEN 0.0 AND 100.0))


-- LOADING SAMPLE DATA

-- BRANCH TABLE
INSERT INTO BRANCH(branchName, postCode) VALUES('Jesmond', '2283')
INSERT INTO BRANCH(branchName, postCode) VALUES('Newcastle','2270')
INSERT INTO BRANCH(branchName, postCode) VALUES('Maryland','2734')
INSERT INTO BRANCH(branchName, postCode) VALUES('Shortland','2519')
INSERT INTO BRANCH(branchName, postCode) VALUES('Fletcher', '2369')

-- CUSTOMER TABLE
INSERT INTO CUSTOMER VALUES('C001220001', 'John Little', '3-28 Ralph St','Jesmond', '2283','0431223311')
INSERT INTO CUSTOMER VALUES('C938874002', 'Mary Chang',  '24-20 Sunset Blvd', 'North Lambton', '2298','0234532322')
INSERT INTO CUSTOMER VALUES('C432832003', 'Kevin Mark', '23-78 Scott Street', 'Newcastle', '2270','0237436353')
INSERT INTO CUSTOMER VALUES('C232342004', 'Debbie Anderson', '23-83 Pacific Hwy', 'Maryland', '2734','0476532487')
INSERT INTO CUSTOMER VALUES('C232422005', 'Martha Marshall', '43-94 Mary Street', 'Jesmond', '2283','0491664563')
INSERT INTO CUSTOMER VALUES('C232422006', 'Jane Howard', '90 Oxford Street', 'Epping', '2121','0431764528')
INSERT INTO CUSTOMER VALUES('C232423007', 'Maya Wills', '65 EAST Street', 'EastWood', '2122','0411063628')
INSERT INTO CUSTOMER VALUES('C232424008', 'Theja Baker', '35 Ocean road', 'Newcastle', '2270','0432063521')
INSERT INTO CUSTOMER VALUES('C231433009', 'Anil Wong', '12 Park Street', 'Eastood', '2121','0411063628')


-- ACCOUNT TABLE
INSERT INTO ACCOUNT VALUES('A000001234',1,'C001220001',27800.00)
INSERT INTO ACCOUNT VALUES('A000001235',1,'C001220001',1800.00)
INSERT INTO ACCOUNT VALUES('A000002345',2,'C938874002',2800.00)
INSERT INTO ACCOUNT VALUES('A000003456',3,'C001220001',55900.00)
INSERT INTO ACCOUNT VALUES('A000004567',4,'C232342004',136625.00)
INSERT INTO ACCOUNT VALUES('A000005678',1,'C938874002',244178.00)
INSERT INTO ACCOUNT VALUES('A000006789',2,'C232342004',107050.00)
INSERT INTO ACCOUNT VALUES('A000007890',3,'C232342004',25700.00)
INSERT INTO ACCOUNT VALUES('A000007910',3,'C232423007',15700.00)

-- LOAN TABLE
INSERT INTO LOAN VALUES('L000011233',1, 'C232422005', 150000.00, 7.25,'2019-4-20','2019-12-19','2019-12-19')
INSERT INTO LOAN VALUES('L000011243',1, 'C232422005', 15000.00, 8.25,'2019-4-25','2019-11-19','2019-12-19')
INSERT INTO LOAN VALUES('L000022344',2, 'C938874002', 45000.00, 6.34,'2019-4-20','2021-1-19',NULL)
INSERT INTO LOAN VALUES('L000033453',3, 'C232342004', 1500000.00, 5.54,'2019-4-20','2020-2-19','2020-2-19')
INSERT INTO LOAN VALUES('L000033463',3, 'C232342004', 100000.00, 6.54,'2016-4-20','2019-2-19','2019-2-19')
INSERT INTO LOAN VALUES('L000033574',2, 'C232424008', 51000.00, 5.50,'2019-1-20','2019-12-19',NULL)
INSERT INTO LOAN VALUES('L000033685',2, 'C231433009', 12000.00, 6.58,'2018-4-20','2020-12-19',NULL)
INSERT INTO LOAN VALUES('L000033796',2, 'C001220001', 145100.00, 5.75,'2017-4-20','2020-4-19','2020-4-19')


-- If LOAN > 150K get customer then increase intrest rate by 1%
select * from LOAN
Where amount >= 150000.00;

Select custNo,
amount*intRate As TotalLoan
from LOAN;

Select custNO,
(intRate+1)*amount As IncreasedLoan
from LOAN;

Select amount from LOAN
group by amount
ORDER BY (amount) DESC;

--Query for hotel DB
--TST AND QA ONLY

select * from hotel
--where city = 'Newcastle'
where city like '%New%'

select g from guest
where guestAdress like '%Street%'
order by guestName

select * from Room
where (type like '%D' or type like'%F') and price >180
order by price asc

select * from booking
where dateto is Null

select count(*) as "Number Of Hotel" from hotel

select avg(price) as "Average Price of rooms" from room

select sum(price) as "Sum Price of rooms" from room
where type like '%F'

select guestNo, count(roomNo) From booking
where roomno like '%1'
group by guestNo

Select hotelNo, count(roomNo) as "Number of rooms in hotel" from room
group by hotelNo
order by hotelNo
--DROP DATABASE IF EXISTS SCSRM
--Create DATABASE SCSRM
--College resource management, non confidential
use SCSRM

Drop TABLE Member
Drop TABLE Student
Drop TABLE Staff
Drop TABLE Resource
Drop TABLE Movable
Drop TABLE Immovable
Drop TABLE Catgeory
Drop TABLE Location
Drop TABLE Privilege
Drop TABLE CourseOfferings
Drop TABLE Invoice
Drop TABLE Loan
Drop TABLE Reservation
Drop TABLE Admin
Drop TABLE Acquisition

--DB main
CREATE TABLE Member (
    MemberID         VARCHAR(20) NOT NULL,
    Name             VARCHAR(20) NOT NULL,
    Number           CHAR(20) NOT NULL,
    CourseCode       CHAR(20) NOT NULL,
    Contact Detail   VARCHAR(20) NOT NULL,
    Payment Detail   VARCHAR(20) NOT NULL,
    Status           VARCHAR(8) DEFAULT 'active' CHECK (Status IN ('active', 'expire')) NOT NULL,
    PRIMARY KEY (MemberID)
)

CREATE TABLE Student (
    MemberID          VARCHAR(20) NOT NULL,
    StudentID         VARCHAR(20) NOT NULL,
    Address           VARCHAR(20) NOT NULL,
    PRIMARY KEY (StudentID)
    FOREIGN KEY (MemberID) references Member (MemberID)
            On Update Cascade On Delete NO ACTION
)

CREATE TABLE Staff (
    StaffID           VARCHAR(20) NOT NULL,
    MemberID          VARCHAR(20) NOT NULL, 
    Address           VARCHAR(20) NOT NULL,
    Position          VARCHAR(20),
    Status            VARCHAR(8) DEFAULT 'active' CHECK (Status IN ('active', 'expire')) NOT NULL,
    PRIMARY KEY (StaffId)
    FOREIGN KEY (MemberID) References Member (MemberID)
            On Update Cascade On Delete NO ACTION
)

CREATE TABLE Resources (
    resourceID         VARCHAR(10) NOT NULL,
	Name               VARCHAR(50) NOT NULL,
    Number             CHAR(20) NOT NULL,
    Model              VARCHAR(20) NOT NULL,
    Brand              VARCHAR(20) NOT NULL,
	Status             VARCHAR(20) DEFAULT 'available' CHECK (Status IN ('available', 'occupied', 'damaged'))NOT NULL, 
	categoryID         INT,
	locationID         INT,
	PRIMARY KEY (resourceID),
	FOREIGN KEY (categoryID) REFERENCES Category (CategoryId) 
            ON UPDATE CASCADE ON DELETE NO ACTION,
	FOREIGN KEY (locationID) REFERENCES Location (LocationId)  
            ON UPDATE CASCADE ON DELETE NO ACTION 
)

CREATE TABLE Moveable (
    MovableID           VARCHAR(20) NOT NULL,
    ResourceID          VARCHAR(10) NOT NULL,
    Value               VARCHAR(15) NOT NULL,
	PRIMARY KEY (MovableID),
	FOREIGN KEY (resourceID) REFERENCES Resources(resourceID)
			ON UPDATE CASCADE ON DELETE NO ACTION

);

CREATE TABLE immoveable (
    ImmovableID         VARCHAR(20) NOT NULL,
    ResourceID          VARCHAR(10) NOT NULL,
    RoomNumber          VARCHAR(20) NOT NULL,
    Capacity            INT NOT NULL,
	PRIMARY KEY (ImmovableID),
	FOREIGN KEY (resourceID) REFERENCES resource(resourceID) 
            ON UPDATE CASCADE ON DELETE NO ACTION

	)

CREATE TABLE Category (
    categoryID          INT identity(1,1) NOT NULL,
	name                VARCHAR(20),
    Descriptions        VARCHAR(50),
	PRIMARY KEY (categoryID),
	)


CREATE TABLE Location  (
    locationID          INT  identity(1,1) NOT NULL,
	Room                VARCHAR(20),
	building            VARCHAR(20),
	campus              VARCHAR(20),
	PRIMARY KEY (locationID)
)

CREATE TABLE Privilege (
    PrivilegeID         VARCHAR(20) NOT NULL,
    CategoryId          VARCHAR(20 NOT NULL),
    MaxAmount           INT NOT NULL,
    MaxPeriod           DATETIME NOT NULL,
    PRIMARY KEY (PrivilegeID)
    FOREIGN KEY categoryID references Category(categoryID)
              ON UPDATE CASCADE ON DELETE CASCADE
)

CREATE TABLE CourseOfferings (
    OfferingID          VARCHAR(20) NOT NULL,
    privilegeID         VARCHAR(20) NOT NULL,
    year offered        DATETIME NOT NULL,
    semester offered    INT NOT NULL,
    begin/End date      DATETIME NOT NULL,
    PRIMARY KEY (OfferingID)
    Foreign KEY privilegeID references Privilege (privilegeID)
            ON UPDATE CASCADE, ON DELETE CASCADE
)

CREATE TABLE Invoice (
    ReturnDate          DATETIME NOT NULL,
    PRIMARY KEY (ReturnDate)
)

CREATE TABLE Loan (
    LoanID              VARCHAR(20) NOT NULL,
    MovableID           VARCHAR(20) NOT NULL,
    MemberID            VARCHAR(20) NOT NULL,
    PRIMARY KEY (LoanID)
    Foreign Key Movable ID References Movable (MovableID)
               ON UPDATE CASCADE, ON DELETE CASCADE
    Foreign Key memberID references Members (memberID)
              ON UPDATE CASCADE, ON DELETE CASCADE

)

 CREATE TABLE Reservation (
     ReservationID        VARCHAR(20) NOT NULL,
     Date&Time            DATETIME NOT NULL,
     PRIMARY KEY (ReservationID)
     Foreign Key memberID references Members(memberID)
              ON UPDATE CASCADE, ON DELETE CASCADE
     Foreign Key resourceID references resource (resourceID)
               ON UPDATE CASCADE, ON DELETE CASCADE
 )

 CREATE TABLE Admin (
     AdminID               VARCHAR(20) NOT NULL,
     StaffID               VARCHAR(20) NOT NULL,
     PRIMARY KEY (AdminID)
     Foreign Key acqusitionID references Acquisition (acquisitionID)
              ON UPDATE CASCADE, ON DELETE CASCADE


 )

 CREATE TABLE Acquisition (
     AcquisitionID          VARCHAR(20) NOT NULL,
     name                   VARCHAR(20) NOT NULL, 
     model                  VARCHAR(30) NOT NULL,
     brand                  VARCHAR(20) NOT NULL,
     description            VARCHAR(20) NOT NULL,
     urgency                VARCHAR(20) NOT NULL,
     status                 VARCHAR(20) DEFAULT 'available' CHECK (Status IN ('available', 'occupied', 'damaged'))NOT NULL,
     vendorCode             VARCHAR(20) NOT NULL,
     price                  INT NOT NULL,
     PRIMARY KEY (AcquisitionID)
     Foreign Key memberID references member(memberID)
              ON UPDATE CASCADE, ON DELETE CASCADE

 )

 --DEV: Pannha Oudom Munint, L2, Jr SWE
--DROP DATABASE IF EXISTS SCSRM
--Create DATABASE SCSRM
--Create DATABASE master
--TST use SCSRM, UDT and QA use master
--Use master 
--Use SCSRM




-- Please Do it 2 times to drop all tables
DROP TABLE CoursePrivileges
DROP TABLE Enroll
DROP TABLE Acquisition
DROP TABLE Reservation
DROP TABLE Loan
DROP TABLE CourseOfferings
DROP TABLE Privilege
DROP TABLE ResourceLocation
DROP TABLE Category
DROP TABLE Immoveable
DROP TABLE Moveable
DROP TABLE AllResource
DROP TABLE Staff
DROP TABLE Student
DROP TABLE Member
go

--DB table Script
--Member Table
CREATE TABLE Member (
    MemberID            VARCHAR(20) NOT NULL,                                       
    MemName             VARCHAR(20) NOT NULL,
    MemNumber           VARCHAR(20) NOT NULL,
    CourseCode          VARCHAR(20) NOT NULL,
    ContactDetail       VARCHAR(20) NOT NULL,	--Member Email only
    PaymentDetail       VARCHAR(20) NOT NULL,
    MemStatus           VARCHAR(8) DEFAULT 'Active' CHECK (MemStatus IN ('Active', 'Inactive')) NOT NULL,
    PRIMARY KEY (MemberID)
);
go
--Student Table
CREATE TABLE Student (
    MemberID          VARCHAR(20) NOT NULL,
    Points            INT NULL,				--Demerit Points
    StudentAddress    VARCHAR(20) NOT NULL,
	PRIMARY KEY (MemberID),
	FOREIGN KEY (MemberID) References Member(MemberID)
			ON UPDATE CASCADE ON DELETE NO ACTION
);
go
--Staff Table
CREATE TABLE Staff (
    MemberID          VARCHAR(20) NOT NULL, 
    StaffAddress      VARCHAR(20) NOT NULL,
    Position          VARCHAR(20) NULL,			-- Admin Position
    StaffStatus       VARCHAR(8) DEFAULT 'active' CHECK (StaffStatus IN ('active', 'Inactive')) NOT NULL,
	PRIMARY KEY (MemberID),
	FOREIGN KEY (MemberID) References Member(MemberID)
			ON UPDATE CASCADE ON DELETE NO ACTION
);
go
--Resource Table
CREATE TABLE AllResource (
    ResourceID         VARCHAR(10) NOT NULL,
    ReName             VARCHAR(50) NOT NULL,
    ReNumber           CHAR(20) NOT NULL,
    Model              VARCHAR(20) NOT NULL,
    Brand              VARCHAR(20) NOT NULL,
	ReStatus           VARCHAR(20) DEFAULT 'available' CHECK (ReStatus IN ('available', 'unavailable', 'occupied', 'damaged'))NOT NULL,
	PRIMARY KEY (ResourceID)
);
go
--Movable resource table
CREATE TABLE Moveable (
    ResourceID            VARCHAR(10) NOT NULL,
    MoValue               VARCHAR(15) NOT NULL,
	PRIMARY KEY (ResourceID),
	FOREIGN KEY (ResourceID) REFERENCES AllResource(ResourceID)
            ON UPDATE CASCADE ON DELETE NO ACTION
	);
go
--Immovable resource table
CREATE TABLE Immoveable (
    ResourceID          VARCHAR(10) NOT NULL,
    RoomNumber          VARCHAR(20) NOT NULL,
    Capacity            INT NOT NULL,
	PRIMARY KEY (ResourceID),
	FOREIGN KEY (resourceID) REFERENCES AllResource(resourceID) 
            ON UPDATE CASCADE ON DELETE NO ACTION
);
go
--Category Table
CREATE TABLE Category (
    categoryID          INT NOT NULL,
    CategoryName        VARCHAR(20) NOT NULL,
    Descriptions        VARCHAR(50) NOT NULL
	PRIMARY KEY (categoryID),
	);
go
--Location Table
CREATE TABLE ResourceLocation  (
    locationID          INT NOT NULL,
    Room                VARCHAR(20) NOT NULL,
    building            VARCHAR(20) NOT NULL,
    campus              VARCHAR(20) NOT NULL
	PRIMARY KEY (locationID),
	);
go
--Privilege table
CREATE TABLE Privilege (
    PrivilegeID         VARCHAR(20) NOT NULL,
    MemberID			VARCHAR(20) NOT NULL,
    PrivilegeDescription         VARCHAR(100) NOT NULL,
    MaxAmount           INT NOT NULL,					--Max Amount of resource allowed to be borrowed
    MaxPeriod           VARCHAR(20) NOT NULL,			--Max period of resources allowed to be borrowed
    PRIMARY KEY (PrivilegeID),
);
go
--Course Offerings table
CREATE TABLE CourseOfferings (
    OfferingID          VARCHAR(20) NOT NULL,
    yearOffered         VARCHAR(30) NOT NULL,
    semesterOffered     INT NOT NULL,
    BeginDate           VARCHAR(30) NOT NULL,
    EndDate             VARCHAR(30) NOT NULL,
    PRIMARY KEY (OfferingID),
);
go
--Loan table
CREATE TABLE Loan (
    LoanID              VARCHAR(20) NOT NULL,
    DueDate             DATE NULL,
	MoModel				VARCHAR(20) NOT NULL,	--Moveable Model
    PRIMARY KEY (LoanID),
);
go
--Reservation table
 CREATE TABLE Reservation (
     ReservationID        VARCHAR(20) NOT NULL,
     ResourceID           VARCHAR(10) NOT NULL,
     ReservationDateTime            DATETIME NOT NULL,
     PRIMARY KEY (ReservationID),
     Foreign Key (resourceID) references AllResource (resourceID)
               ON UPDATE CASCADE ON DELETE NO ACTION
 );
go
--Acquisition table
 CREATE TABLE Acquisition (
     AcquisitionID          VARCHAR(20) NOT NULL,
	 MemberID				VARCHAR(20) NOT NULL,
     Itemname               VARCHAR(20) NOT NULL ,
     model                  VARCHAR(30) NOT NULL,
     brand                  VARCHAR(20) NOT NULL,
     Itemdescription        VARCHAR(100) NOT NULL,
     urgency                VARCHAR(20) DEFAULT 'Not Urgent' CHECK (urgency IN ('Urgent','Not Urgent')) NOT NULL,
     ItemStatus             VARCHAR(20) DEFAULT 'available' CHECK (ItemStatus IN ('available', 'Delivered', 'Pending Delivery', 'Processing'))NOT NULL,
     vendorCode             VARCHAR(20) NOT NULL,
     price                  INT NOT NULL,
     PRIMARY KEY (MemberID, AcquisitionID),
	 FOREIGN KEY (MemberID) references Member(MemberID)
			 ON UPDATE CASCADE ON DELETE NO ACTION,	
 );
go
 --Enrollment Table
 CREATE TABLE Enroll (
     EnrollmentID			VARCHAR(10) NOT NULL,
     MemberID              VARCHAR(20) NOT NULL,
     OfferingID          VARCHAR(20) NOT NULL,
     PRIMARY KEY (OfferingID, EnrollmentID),
     Foreign Key (OfferingID) references CourseOfferings(OfferingID)
             ON UPDATE CASCADE ON DELETE NO ACTION,
 );
go
 --Course Privilege Table
CREATE TABLE CoursePrivileges (
     CoursePrivilegesID		VARCHAR(10) NOT NULL,
     OfferingID             VARCHAR(20) NOT NULL,
     PrivilegeID            VARCHAR(20) NOT NULL,
     PRIMARY KEY (PrivilegeID, OfferingID),
     Foreign Key (PrivilegeID) references Privilege(PrivilegeID)
             ON UPDATE CASCADE ON DELETE NO ACTION
 );

go

--Data Input	
--Member Table
--Contect details is email instead of Phone numner
INSERT INTO Member VALUES 
('M001', 'Anthony J','3313933','CMNS2005','3313933@gmail.com','MasterCard','active'),
('M003', 'Tyson F','3324552','INFT1201','3324552@gmail.com','American Express','active'),
('M005', 'Romero Y','3113245','DESN1104','3313245@uon.edu.au','ANZ Royal','active'),
('M010', 'George SP','3123452','COMP2050','GSP@uon.edu.au','MasterCard','inactive'),
('MS012', 'Michael B','3313944','FCOM205','BispingM@gmail.com','Amercian Express','active'),
('MS011', 'Tony F','3313190','FCOM101','Furguson@gmail.com','Amercian Express','active'),
('MS014', 'Chael S','3128001','FBUS104','Sonnen@gmail.com','MasterCard','active')
go	
	--Student Table
INSERT INTO Student VALUES
('M001','30','3/141 University Dr'),
('M003','80','151 Mount Hutton'),
('M005','10','3/141 University Dr'),
('M010','80','41st Cameron Park')
go
--Staff Table
INSERT INTO Staff VALUES
('MS012', '2/141 University Dr', 'Admin', 'Active'),
('MS011', '515st Mount hutton', 'Admin', 'Active'),
('MS014', 'GPNSWst DC', 'Admin', 'Active')
go
--Resource Table
INSERT INTO AllResource VALUES
('MR001','IMAX-MSM908','908-001','MSM908','IMAX','Damaged'),
('MR004','SENNHEISER-HD800S','800-001','SHD800S','SENNHEISER','Available'),
('MR005','SENNHEISER-HD800S','800-002','SHD800S','SENNHEISER','Unavailable'),
('IR002','INTEL-XE/QUADRO Workstation','1848-001','I/Q-DELL','DELL','Occupied'),
('IR005','Media suite','380-1','MS3801','APPLE','Available'),
('IR006','Computer Lab','301-1','CTLAB01','None','Available')
go
--Movable Table
INSERT INTO Moveable VALUES ('MR001','250,000')
INSERT INTO Moveable VALUES ('MR004','2100')
INSERT INTO Moveable VALUES ('MR005','2100')
go
--Immovable Table
INSERT INTO Immoveable VALUES ('IR002','ICT3.84', 3)
INSERT INTO Immoveable VALUES ('IR005','ICT3.80', 7)
INSERT INTO Immoveable VALUES ('IR006','CT301',12)
go
--Category Table
INSERT INTO Category VALUES
('1','Headphones','SENNHEISER Headphones'),
('2','Cameras','IMAX Cameras'),
('3','Workstations',' Intel and Quadro based workstations'),
('4','Studios',' Media Suite studios')
go
--Location Table
INSERT INTO Resourcelocation VALUES
(384,'ICT3.84','ICT','Callaghan'),
(380,'ICT3.80','ICT','Callaghan'),
(409,'HS409','Hunter','Callaghan')
go
--Privilege Table
INSERT INTO Privilege VALUES
('PSTU001','M001','Student Privilege & Student level of access and clearance','2','2-48 hours'),
('PSTU002','M003','Student Privilege & Student level of access and clearance','2','2-48 hours'),
('PSTU003','M005','Student Privilege & Student level of access and clearance','2','2-48 hours'),
('PSTU004','M010','Student Privilege & Student level of access and clearance','2','2-48 hours'),
('PSTA002','MS012','Staff Privilege & Staff level of access and clearance','2','2-48 hours')
go
--Course Offering Table
INSERT INTO CourseOfferings VALUES ('CO001','2020','2','2020-07-24','2020-11-24')
INSERT INTO CourseOfferings VALUES ('CO002','2019','1','2020-02-23','2020-06-23')
INSERT INTO CourseOfferings VALUES ('CO003','2020','2','2020-07-24','2020-11-24')
INSERT INTO CourseOfferings VALUES ('CO004','2020','2','2020-07-24','2020-11-24')
INSERT INTO CourseOfferings VALUES ('SCO001','2019','2','2019-07-24','2019-11-24')

go
--Loan Table
--"MSM908" Is most loaned resource
INSERT INTO Loan VALUES ('L001','2020-11-10','MSM908')
INSERT INTO Loan VALUES ('L002','2020-11-11','MSM908')
INSERT INTO Loan VALUES ('L003','2020-11-10','SHD008S')
go
--Reservation Table
INSERT INTO Reservation VALUES ('RIR001','IR005','2020-05-01')
INSERT INTO Reservation VALUES ('RIR002','IR002','2020-06-05')
INSERT INTO Reservation VALUES ('RIR003','IR005','2020-09-19')

go
--Acquisition Table
INSERT INTO Acquisition VALUES ('AMBP001','MS012','MacBook Pro 16','i9-32gb-1tb-5700m','APPLE','2020 MacBook Pro for media suite','Not urgent','Processing','MBP16-001','3500')
INSERT INTO Acquisition VALUES ('AGPU002','MS014','Nvidia Quadro A100','Quadro-A100-48gb','NVIDIA','Ampere based Quadro A-100 for CAD rendering workstations','Urgent','Pending Delivery','QA-100','3000')
INSERT INTO Acquisition VALUES ('ACPU001','MS011','AMD RYZEN 5950X','16 Cores 32 Threads at 4,9 Ghz','AMD','AMD 16core processor for workstation','Not urgent','Processing','3950X-001','1200')
go
--Enrollment ID
INSERT INTO Enroll VALUES
('ESTU001','M001','CO001'),
('ESTU002','M005','CO002'),
('ESTA001','MS011','SCO001')
go
--CoursePrivilege ID
INSERT INTO CoursePrivileges VALUES
('CPSTU001','CO001','PSTU001'),
('CPSTA001','SCO001','PSTA002'),
('CPSTU002','CO002','PSTU002')
go
--For checking if tables work
SELECT * FROM Member
SELECT * FROM Student
SELECT * FROM Staff
SELECT * FROM AllResource
SELECT * FROM Moveable
SELECT * FROM Immoveable
SELECT * FROM Category
SELECT * FROM CourseOfferings
SELECT * FROM CoursePrivileges
SELECT * FROM Privilege
SELECT * FROM Reservation
SELECT * FROM Loan
SELECT * FROM ResourceLocation
SELECT * FROM Acquisition
SELECT * FROM Enroll
go
--System Queries

--Print Student name who have enrolled and courses they enrolled in
SELECT MemName As 'Member Name',CourseCode As 'Course Enrolled' 
FROM Member
where not MemName = 'Michael B' and not MemName = 'Tony F' and not MemName = 'Chael S';
go

--Print Max amount of headphones allowed, member name and his or her code
SELECT MaxAmount As 'Max Number of speakers allowed', MemName As 'Member Name', CourseCode As 'Course'
FROM Privilege, Member
GROUP BY MemName, CourseCode, MaxAmount
ORDER BY 'Max Number of speakers allowed';
go

--Show staff member ID  and the total number of reservations and acquisition they have made.
SELECT COUNT(AcquisitionID)as 'Amount of acquisition and reservation', member.MemberID, Member.ContactDetail
FROM Acquisition, Member
Where NOT member.MemberID = 'M001' and not Member.MemberID = 'M003' and not Member.MemberID ='M005' and not Member.MemberID ='M010'
GROUP BY member.MemberID, member.ContactDetail
ORDER BY COUNT(AcquisitionID);
go

--Print the name of student who borrowed a camera and the year they did
SELECT MemName As 'Member name', MemberID, CategoryName As 'Category', Model, CURRENT_TIMESTAMP as 'Date time borrowed this year'
from Member, Category, Moveable, AllResource
where CategoryName ='Cameras' and AllResource.Model ='MSM908' and not MemberID = 'MS011' and not MemberID = 'MS014' and not MemberID = 'MS012'
Group by MemberID,MemName, CategoryName, Model;
go

--Show Most Loaned Movaeble resource This month (Business critical DO NOT PUSH TO DEV OR PROD)
SELECT TOP(1) With ties Count(*) As 'Time Loaned this month', loan.MoModel As 'Laoned Resource Model', AllResource.ReName As 'Resource Name'
FROM Loan, AllResource
WHERE Loan.MoModel = AllResource.Model and MONTH(Loan.DueDate) = MONTH( SYSDATETIME())
and YEAR(Loan.DueDate) = YEAR(SYSDATETIME())
GROUP BY MoModel, ReName
having COUNT(*) >= all
(SELECT COUNT(*) from Loan, AllResource
WHERE MoModel = ReName and MONTH(Loan.DueDate) = MONTH(SYSDATETIME())
and YEAR (Loan.DueDate) = YEAR(SYSDATETIME())
group by ResourceID)
Order by MoModel DESC
go

--Print the date, Room, and number of reservations made for the rooms
SELECT CONVERT(DATE, Reservation.ReservationDateTime) as 'Reservation date', AllResource.ReName as 'Room', COUNT(*) as 'Number of Reservation made'
FROM Reservation, ResourceLocation, AllResource
WHERE ReName =  'Media Suite' AND CONVERT(DATE, ReservationDateTime) IN ('2020-05-01', '2020-06-05', '2020-09-19')
Group by ReservationDateTime, ReName;

--Dev: Pannha Oudom Munint, L2, Jr SWE
--Push to QA and TST not PROD
--From DEV
--External query for Student DB

Select * from Register
Select * from Student
Select * from Semester
Select * from Course

Select count(*) from Register
where grade IN ('A','A+','B+') and courseID like '%2040'

Select courseID, count(stdNo) from Register
Group by courseID

Select courseID, count(stdNo) from Register
where grade is not NULL
Group by courseID

Select stdNo, count(distinct courseID) from Register
group by stdNo

Select courseID, count(stdNo) from Register
--where grade is not NULL
Group by courseID
having count(stdNo) > 0
order by count(stdNo) desc

Select stdNo, avg(mark) as "Marks" from Register
where grade is not NULL
group by stdNo
having count(stdNo)>1
Select * from Register
Select * from Student
Select * from Semester
Select * from Course

Select count(*) from Register
where grade IN ('A','A+','B+') and courseID like '%2040'

Select courseID, count(stdNo) from Register
Group by courseID

Select courseID, count(stdNo) from Register
where grade is not NULL
Group by courseID

Select stdNo, count(distinct courseID) from Register
group by stdNo

Select courseID, count(stdNo) from Register
--where grade is not NULL
Group by courseID
having count(stdNo) > 0
order by count(stdNo) desc

Select stdNo, avg(mark) as "Marks" from Register
where grade is not NULL
group by stdNo
having count(stdNo)>1
