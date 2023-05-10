

CREATE TABLE Profile (
    Id VARCHAR(255) PRIMARY KEY,
    ProfileId VARCHAR(255) NOT NULL,
    ProfileName VARCHAR(255) NOT NULL,
    ProductionType VARCHAR(255),
    BreedName VARCHAR(255),
    CreatedTime VARCHAR(255),
    CreatorId VARCHAR(255),
    CreatorName VARCHAR(255),
    ModifiedTime VARCHAR(255),
    ModifierId VARCHAR(255),
    ModifierName VARCHAR(255),
    LegalEntityId VARCHAR(255),
    Timestamp VARCHAR(255)
);

CREATE TABLE Curve (
    id VARCHAR(255) PRIMARY KEY,
    occurrenceTime TIMESTAMP,
    referenceType VARCHAR(255),
    profileId VARCHAR(255)
);

CREATE TABLE Point (
    day NUMERIC,
    value NUMERIC,
    curveId VARCHAR(255),
    CONSTRAINT pk_point PRIMARY KEY (day, curveId),
    CONSTRAINT fk_curve FOREIGN KEY (curveId) REFERENCES Curve (id) ON DELETE CASCADE
);
