CREATE TABLE IF NOT EXISTS users (
  full_name VARCHAR(64) NOT NULL CHECK (full_name <> '' ),
  username VARCHAR(32) UNIQUE NOT NULL CHECK (username <> '' ),
  email VARCHAR(64) PRIMARY KEY CHECK (email <> '' ),
  phone_number VARCHAR(64) NOT NULL CHECK (phone_number <> '' ),
  password VARCHAR(128) NOT NULL CHECK (password <> '' ),
  type VARCHAR(64) NOT NULL
);

CREATE TABLE IF NOT EXISTS member (
  email VARCHAR(64) REFERENCES users(email)
  ON UPDATE CASCADE 
  ON DELETE CASCADE
  DEFERRABLE INITIALLY DEFERRED
  NOT NULL
);

CREATE TABLE IF NOT EXISTS administrator (
  email VARCHAR(64) REFERENCES users (email)
  ON UPDATE CASCADE
  ON DELETE CASCADE
  DEFERRABLE INITIALLY DEFERRED
  NOT NULL
);

CREATE TABLE IF NOT EXISTS category (
  category VARCHAR(32) PRIMARY KEY);

CREATE TABLE IF NOT EXISTS activity (
  activity_id INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  inviter VARCHAR(64) REFERENCES users(email) 
  ON UPDATE CASCADE 
  ON DELETE CASCADE 
  DEFERRABLE INITIALLY DEFERRED
  NOT NULL,
  category VARCHAR(32) REFERENCES category(category) 
  ON UPDATE CASCADE 
  ON DELETE CASCADE
  DEFERRABLE INITIALLY DEFERRED 
  NOT NULL,
  activity_name VARCHAR(128) NOT NULL CHECK (activity_name <> '' ),
  start_date_time TIMESTAMP NOT NULL,
  end_date_time TIMESTAMP NOT NULL CHECK (end_date_time>=start_date_time),
  venue VARCHAR(128) NOT NULL CHECK (venue <> '' ),
  capacity INTEGER NOT NULL CHECK (capacity >= 2 AND capacity <= 10)
);

CREATE TABLE IF NOT EXISTS joins (
  activity_id INT REFERENCES activity(activity_id) 
  ON UPDATE CASCADE
  ON DELETE CASCADE
  DEFERRABLE INITIALLY DEFERRED
  NOT NULL,
  participant VARCHAR(64) REFERENCES users(email) 
  ON UPDATE CASCADE
  ON DELETE CASCADE
  DEFERRABLE INITIALLY DEFERRED
  NOT NULL,
  PRIMARY KEY (activity_id,participant)
);

CREATE TABLE IF NOT EXISTS review (
  activity_id INT REFERENCES activity(activity_id) 
  ON UPDATE CASCADE
  ON DELETE CASCADE
  DEFERRABLE INITIALLY DEFERRED
  NOT NULL,
  timestamp TIMESTAMP NOT NULL,
  participant VARCHAR(64) REFERENCES users(email) NOT NULL,
  rating INT NOT NULL,
  comment VARCHAR(4096) NOT NULL CHECK (comment <> '' ),
  PRIMARY KEY (activity_id,timestamp,participant)
);

CREATE TABLE IF NOT EXISTS report (
  submitter VARCHAR(64) REFERENCES users(email) 
  ON UPDATE CASCADE
  ON DELETE CASCADE
  DEFERRABLE INITIALLY DEFERRED
  NOT NULL,
  timestamp TIMESTAMP NOT NULL,
  report_user VARCHAR(64) REFERENCES users(email) 
  ON UPDATE CASCADE
  ON DELETE CASCADE
  DEFERRABLE INITIALLY DEFERRED
  NOT NULL,
  comment VARCHAR(4096) NOT NULL CHECK (comment <> '' ),
  severity VARCHAR(6) NOT NULL CHECK (severity = 'low' OR severity = 'medium' OR severity = 'high'),
  PRIMARY KEY (submitter,timestamp)
);

CREATE TABLE IF NOT EXISTS random_comments (
	comment VARCHAR(4096) PRIMARY KEY UNIQUE
); 

CREATE TABLE IF NOT EXISTS random_report (
	comment VARCHAR(4096) PRIMARY KEY
); 
