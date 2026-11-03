CREATE TABLE flights (
  flight_date          DATE,
  year                 SMALLINT,
  month                SMALLINT,
  day_of_week          SMALLINT,
  airline_code         TEXT,
  airline              TEXT,
  tail_number          TEXT,
  flight_number        INTEGER,
  origin               TEXT,
  origin_city          TEXT,
  origin_state         TEXT,
  dest                 TEXT,
  dest_city            TEXT,
  dest_state           TEXT,
  sched_dep_time       SMALLINT,      -- hhmm, e.g. 1305
  dep_time             SMALLINT,
  dep_delay            NUMERIC,       -- minutes, can be negative (early)
  dep_del15            SMALLINT,      -- 1 if 15+ min late, else 0
  dep_time_block       TEXT,          -- e.g. '0600-0659'
  taxi_out             NUMERIC,
  wheels_off           SMALLINT,
  wheels_on            SMALLINT,
  taxi_in              NUMERIC,
  sched_arr_time       SMALLINT,
  arr_time             SMALLINT,
  arr_delay            NUMERIC,
  arr_del15            SMALLINT,
  cancelled            SMALLINT,
  cancellation_code    TEXT,
  cancellation_reason  TEXT,
  diverted             SMALLINT,
  sched_elapsed_time   NUMERIC,
  actual_elapsed_time  NUMERIC,
  air_time             NUMERIC,
  distance             NUMERIC,
  carrier_delay        NUMERIC,
  weather_delay        NUMERIC,
  nas_delay            NUMERIC,
  security_delay       NUMERIC,
  late_aircraft_delay  NUMERIC
);


psql -h localhost -U db-user -d weshallsee \
  -c "\copy flights FROM 'flights.csv' WITH (FORMAT csv, HEADER)"

ALTER TABLE flights ADD COLUMN id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY;

