ALTER TABLE airlines ADD UNIQUE (name);

ALTER TABLE airplanes ADD CONSTRAINT seat_check CHECK (seats>0);

ALTER TABLE bookings ADD CONSTRAINT state_check CHECK (state IN (0, 1));

ALTER TABLE flights ADD CONSTRAINT duration_check CHECK (flight_duration > 0);