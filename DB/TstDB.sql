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