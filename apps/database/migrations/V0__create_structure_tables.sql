CREATE TABLE location
(
    legal_entity_id           UUID             NOT NULL, 
    location_id               uuid PRIMARY KEY NOT NULL,
    name                      varchar          NOT NULL,
    created_by                varchar(200),
    created_time              timestamptz      NOT NULL DEFAULT now(),
    modified_time             timestamptz      NOT NULL DEFAULT now(),
    location_type             varchar(50)
);

CREATE TABLE farm
(
    farm_id         uuid PRIMARY KEY NOT NULL REFERENCES location (location_id) ON DELETE CASCADE,
    legal_entity_id uuid             NOT NULL,
    country_code    char(2),
    region          varchar,
    timezone        varchar(128),
    modified_time   timestamptz      NOT NULL DEFAULT now()
);
CREATE INDEX farm_legal_entity_id_idx ON farm (legal_entity_id);


CREATE TABLE house
(
    house_id      uuid PRIMARY KEY NOT NULL REFERENCES location (location_id) ON DELETE CASCADE,
    farm_id       uuid             NOT NULL REFERENCES farm (farm_id) ON DELETE CASCADE,
    modified_time timestamptz      NOT NULL DEFAULT now()
);

CREATE INDEX house_farm_id_idx ON house (farm_id);