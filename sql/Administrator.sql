INSERT INTO administrator
(SELECT email FROM users WHERE type = 'administrator');