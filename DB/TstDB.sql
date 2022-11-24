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
