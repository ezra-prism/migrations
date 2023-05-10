ALTER TABLE farm RENAME TO farm_deprecated2;
ALTER TABLE house RENAME TO house_deprecated2;

CREATE TABLE Farm (
  Id varchar(255) NOT NULL,
  OccurrenceTime timestamptz NOT NULL,
  FarmId varchar(255) NOT NULL,
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
  HouseId varchar(255) NOT NULL,
  Name varchar(255) NOT NULL,
  FarmId varchar(255) NOT NULL,
  Timezone varchar(255) NOT NULL,
  LegalEntityId varchar(255) NOT NULL,
  Timestamp varchar(255) NOT NULL,
  PRIMARY KEY (Id)
);