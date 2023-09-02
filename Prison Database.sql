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

--This is Select from prison table and order By Height 
Select*
FROM Prison
Order By Height, ASC;


SELECT Sex
FROM Prison
WHERE Sex= 'M';

UPDATE Prison
SET CaseID = 5, FacillityID = 32
WHERE inmate_id = 32;

/* Update Then Table name then set THE NEW ATTRIBUTE then where is like which row */