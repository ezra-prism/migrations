-- Extention to use gen_random_uuid
CREATE EXTENSION pgcrypto;

-- Delete placement table
DROP TABLE IF EXISTS public.placement;

-- Create new table structure
CREATE TABLE public.placement (
    id uuid DEFAULT gen_random_uuid(),
    placementdate       timestamptz     NOT NULL,
    legalentityid       varchar         NOT NULL,
    farmid              varchar         NOT NULL,
    houseid             varchar         NOT NULL,
    referencecurveid    varchar         NOT NULL,
    PRIMARY KEY (id)
);
