insert into users (first_name, last_name, created_at, updated_at)
values 
("Chris", "Baker", now(), now()),
("Daina", "Smith", now(), now()),
("James", "Johnson", now(), now()),
("Jessica", "Davidson", now(), now()),
("Seth", "Edmunds", now(), now()),
("Dan", "Bock", now(), now()),
("Raymond", "Perlman", now(), now());

select * from users;

select * from friendships;

insert into friendships (created_at, updated_at, user_id, friend_id)
values
(now(), now(), 1, 2),
(now(), now(), 2, 1),
(now(), now(), 6, 3),
(now(), now(), 3, 1),
(now(), now(), 1, 4),
(now(), now(), 4, 1),
(now(), now(), 1, 5),
(now(), now(), 2, 7),
(now(), now(), 4, 6),
(now(), now(), 5, 4);

select users.first_name, users.last_name, user2.first_name as friend_first_name, user2.last_name as friend_last_name
from users
left join friendships
on users.id = friendships.friend_id
left join users as user2
on friendships.user_id = user2.id;


