INSERT INTO member (SELECT email FROM users WHERE type = 'member');
