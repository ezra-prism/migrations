CREATE TABLE reference
(
    profileid                 varchar          NOT NULL, 
    referencetype             varchar          NOT NULL, 
    id                        varchar          NOT NULL,
    breedname                 varchar          NOT NULL,
    profilename               varchar          NOT NULL,
    legalentityid             varchar          NOT NULL,
    occurrencetime            timestamptz      NOT NULL, 
    referenceid               varchar PRIMARY KEY NOT NULL
);
CREATE TABLE curves
(
    id                varchar     NOT NULL, 
    profileid         varchar     NOT NULL, 
    referencetype     varchar     NOT NULL, 
    day               integer     NOT NULL,
    value             float       NOT NULL,
    curveid           varchar     NOT NULL,
    occurrencetime    timestamptz NOT NULL,
    PRIMARY KEY (id, profileid, referencetype, day, curveid)
);
