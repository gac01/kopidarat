INSERT INTO joins (activity_id, participant)
(
 SELECT activity_id, inviter
 FROM activity
);