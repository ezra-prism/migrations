

CREATE TABLE Country (
  Id varchar(255) NOT NULL,
  OccurrenceTime timestamptz NOT NULL,
  CountryId varchar(255) NOT NULL,
  CountryCode varchar(50) NOT NULL,
  LegalEntityId varchar(255) NOT NULL,
  Timestamp varchar(255) NOT NULL,
  PRIMARY KEY (Id)
);

CREATE TABLE Region (
  Id varchar(255) NOT NULL,
  OccurrenceTime timestamptz NOT NULL,
  RegionId varchar(255) NOT NULL,
  RegionName varchar(255) NOT NULL,
  RegionCode varchar(50) NOT NULL,
  Country varchar(255) NOT NULL,
  LegalEntityId varchar(255) NOT NULL,
  Timestamp varchar(255) NOT NULL,
  PRIMARY KEY (Id)
);

CREATE TABLE Farm (
  Id varchar(255) NOT NULL,
  OccurrenceTime timestamptz NOT NULL,
  FarmId int NOT NULL,
  Name varchar(255) NOT NULL,
  Country varchar(255) NOT NULL,
  Region varchar(255) NOT NULL,
  LegalEntityId varchar(255) NOT NULL,
  Timezone varchar(255) NOT NULL,
  CalculationHour varchar(255) NOT NULL,
  Timestamp varchar(255) NOT NULL,
  PRIMARY KEY (Id)
);

CREATE TABLE House (
  Id varchar(255) NOT NULL,
  OccurrenceTime timestamptz NOT NULL,
  HouseId int NOT NULL,
  Name varchar(255) NOT NULL,
  FarmId varchar(255) NOT NULL,
  Timezone varchar(255) NOT NULL,
  LegalEntityId varchar(255) NOT NULL,
  Timestamp varchar(255) NOT NULL,
  PRIMARY KEY (Id)
);
