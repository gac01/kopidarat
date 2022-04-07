INSERT INTO users VALUES ('Bang Jago','bangjago','bang.jago@bang.jago','+62 123-456-7890','bangjago','member');
INSERT INTO member VALUES ('bang.jago@bang.jago');

INSERT INTO joins VALUES ('4', 'bang.jago@bang.jago');
INSERT INTO joins VALUES ('6', 'bang.jago@bang.jago');
INSERT INTO joins VALUES ('9', 'bang.jago@bang.jago');

INSERT INTO joins VALUES ('28', 'bang.jago@bang.jago');
INSERT INTO joins VALUES ('31', 'bang.jago@bang.jago');
INSERT INTO joins VALUES ('37', 'bang.jago@bang.jago');
INSERT INTO joins VALUES ('39', 'bang.jago@bang.jago');

INSERT INTO activity(inviter,activity_name,category,start_date_time,end_date_time,venue,capacity)
VALUES ('bang.jago@bang.jago','Cycling @ Marina Bay','Sports','2022-03-30 4:00 pm','2022-03-30 6:00 pm', 'Marina Bay','6');
INSERT INTO joins SELECT a.activity_id, 'bang.jago@bang.jago' FROM activity a WHERE a.activity_name='Cycling @ Marina Bay' AND a.inviter='bang.jago@bang.jago';
INSERT INTO joins SELECT a.activity_id, 'kjarvis44@imgur.com' FROM activity a WHERE a.activity_name='Cycling @ Marina Bay' AND a.inviter='bang.jago@bang.jago';
INSERT INTO joins SELECT a.activity_id, 'tczajkowska46@epa.gov' FROM activity a WHERE a.activity_name='Cycling @ Marina Bay' AND a.inviter='bang.jago@bang.jago';
INSERT INTO joins SELECT a.activity_id, 'lgettins4l@acquirethisname.com' FROM activity a WHERE a.activity_name='Cycling @ Marina Bay' AND a.inviter='bang.jago@bang.jago';

INSERT INTO activity(inviter,activity_name,category,start_date_time,end_date_time,venue,capacity)
VALUES ('bang.jago@bang.jago','Indonesian Food Hunt','Dining','2022-03-30 4:00 pm','2022-03-30 6:00 pm', 'Kampong Glam','5');
INSERT INTO joins SELECT a.activity_id, 'bang.jago@bang.jago' FROM activity a WHERE a.activity_name='Cycling @ Marina Bay' AND a.inviter='bang.jago@bang.jago';
INSERT INTO joins SELECT a.activity_id, 'wde4y@hugedomains.com' FROM activity a WHERE a.activity_name='Cycling @ Marina Bay' AND a.inviter='bang.jago@bang.jago';
INSERT INTO joins SELECT a.activity_id, 'rmarco56@istockphoto.com' FROM activity a WHERE a.activity_name='Cycling @ Marina Bay' AND a.inviter='bang.jago@bang.jago';

INSERT INTO review VALUES ('4', '2022-03-23 10:24 pm','bang.jago@bang.jago','5','A day discovering something new is an ideal day for me! I was that day years old when I found that there is a Bali-like temple in Singapore!');
INSERT INTO report VALUES ('bang.jago@bang.jago','2022-03-30 1:18 pm','wstadden99@domainmarket.com', 'This guy crossed some boundaries!', 'Medium');