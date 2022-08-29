


USE bob_ross;
CREATE TABLE IF NOT EXISTS esp_dates (
    episode varCHAR(255) NOT NULL,
    date DATE,
    -- PRIMARY KEY (date)
);
LOAD DATA LOCAL
    INFILE './datasets/TJOP - Esp Dates'
    INTO TABLE esp_dates
    ENCLOSED BY '()'


ALTER TABLE esp_dates DROP COLUMN episode;

