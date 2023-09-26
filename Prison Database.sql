CREATE TABLE Prison (
    inmate_id INT AUTO_INCREMENT PRIMARY KEY,
    Race VARCHAR(10),
    Height DECIMAL(4, 2),
    Sex VARCHAR(1),
    Eye_Color VARCHAR(10),
    Prison_Sentence INT,
    CaseID INT,
    FacillityID INT
 
);

--VIEW
CREATE VIEW Main AS
SELECT Race,Sex,Prison_Sentence
FROM Prison;

SELECT*FROM Main;


Create VIEW Subcat AS
SELECT inmate_id,Height,Eye_Color,CaseID
From Prison;

SELECT*FROM Subcat;


-- U need to remove , beforw the end

Create Table
    CaseTable(
        CaseID INT PRIMARY KEY AUTO_INCREMENT,
        Case_Detail VARCHAR(40)
          
    );

Create Table
    Facillity(
        FacillityID INT PRIMARY KEY,
        Facillity_Name VARCHAR(20),
        Facillity_Location VARCHAR(20)
    );
ALTER TABLE Prison
Add FOREIGN KEY(CaseID)
REFERENCES CaseTable(CaseID);--This how to add a foregin key

ALTER TABLE Prison
ADD FOREIGN KEY(FacillityID)
REFERENCES Facillity(FacillityID);

INSERT INTO Prison(Race,Height,Sex,Eye_Color,Prison_Sentence)VALUES('White',1.30,'F','Blue',6);
INSERT INTO CaseTable(Case_Detail)VALUES('Possession Of Class B Drug');
INSERT INTO Facillity(FacillityID,Facillity_Name,Facillity_Location)VALUES(32,'Hell','Mexico');



Drop TABLE Facillity;
Drop Table Prison;

Drop Table CaseTable;
Describe Prison;

Select*FROM CaseTable;

SELECT*FROM Prison;
SELECT*FROM CaseTable;
SELECT*FROM Prison;
SELECT*FROM Facillity;
--This is Select from prison table and order By Height 
Select*
FROM Prison
Order By Height, ASC;


SELECT Sex
FROM Prison
WHERE Sex= 'M';

UPDATE Prison
SET CaseID = 5, FacillityID = 32
WHERE inmate_id = 5;

/* Update Then Table name then set THE NEW ATTRIBUTE then where is like which row */


--This View Tempoary table added to toghter
CREATE VIEW RaceSex AS
SELECT Race, Sex
FROM Prison;

SELECT * FROM RaceSex;--Tempoary table.


Create View HeightEye_Color AS
Select Height,Eye_Color
FROM Prison;

Select * FROM HeightEye_Color;

--UPdate Inmate Information
UPDATE Prison
SET Race="Black",Sex="M"
Where inmate_id=2;

SELECT * FROM Prison;

--Query to select > and finds sentnece less.
SELECT*FROM Prison WHERE Prison_Sentence<20;


CREATE TABLE juvenile (
    inmate_id INT AUTO_INCREMENT PRIMARY KEY,
    Race VARCHAR(10),
    Height DECIMAL(4, 2),
    Sex VARCHAR(1),
    Eye_Color VARCHAR(10),
    Prison_Sentence INT,
    CaseID INT,
    FacillityID INT,
    inmate_age INT
);
Drop TABLE juvenile;
CREATE TRIGGER InsertIntoJuvenile
AFTER INSERT ON hello.Prison -- Make sure to specify the correct schema/database name
FOR EACH ROW
BEGIN
    DECLARE inmate_age INT;
    
    
    
    -- Check if the inmate is under 18
    IF inmate_age < 18 THEN
        INSERT INTO hello.juvenile (Race, Height, Sex, Eye_Color, Prison_Sentence, CaseID, FacillityID)
        VALUES (NEW.Race, NEW.Height, NEW.Sex, NEW.Eye_Color, NEW.Prison_Sentence, NEW.CaseID, NEW.FacillityID);
    END IF;
END;

INSERT INTO juvenile(Race,Height,Sex,Eye_Color,Prison_Sentence,inmate_age)VALUES('White',1.30,'F','Blue',6,17);
Describe juvenile;
Select*FROM juvenile;



-- Pre-create the lady_prison table (ensure it matches the structure of the Prison table)
CREATE TABLE IF NOT EXISTS lady_prison (
    inmate_id INT AUTO_INCREMENT PRIMARY KEY,
    Race VARCHAR(10),
    Height DECIMAL(4, 2),
    Sex VARCHAR(1),
    Eye_Color VARCHAR(10),
    Prison_Sentence INT,
    CaseID INT,
    FacillityID INT
);

--This is a Trigger

CREATE TRIGGER InsertIntoLadyPrison
AFTER INSERT ON Prison
FOR EACH ROW
BEGIN
    -- Check if the new inmate is female (assuming 'Sex' column is 'F' for female)
    IF NEW.Sex = 'F' THEN
        -- Insert the new inmate's data into the 'lady_prison' table
        INSERT INTO lady_prison (Race, Height, Sex, Eye_Color, Prison_Sentence, CaseID, FacillityID)
        VALUES (NEW.Race, NEW.Height, NEW.Sex, NEW.Eye_Color, NEW.Prison_Sentence, NEW.CaseID, NEW.FacillityID);
    END IF;
END;



Select*FROM lady_prison;
