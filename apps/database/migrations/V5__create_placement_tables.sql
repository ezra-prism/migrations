CREATE TABLE placement
(
    id                  varchar         NOT NULL,
    placementid         varchar         NOT NULL,
    placementdate       timestamptz     NOT NULL,
    legalentityid       varchar         NOT NULL,
    farmid              varchar         NOT NULL,
    houseid             varchar         NOT NULL,
    referencecurveid    varchar         NOT NULL,
    PRIMARY KEY (id, placementid)
);
