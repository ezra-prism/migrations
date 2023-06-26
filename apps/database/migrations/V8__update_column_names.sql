-- Rename the old column
ALTER TABLE curve RENAME COLUMN occurrenceTime TO occurrenceTimeOld;

-- Add a new column with the timestamptz data type
ALTER TABLE curve ADD COLUMN occurrenceTime timestamptz;

-- Copy the values from the old column to the new column
UPDATE curve SET occurrenceTime = occurrenceTimeOld;

-- Drop the old column
ALTER TABLE curve DROP COLUMN occurrenceTimeOld;
