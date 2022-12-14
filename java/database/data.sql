BEGIN TRANSACTION;




INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');


INSERT INTO collection (collection_name) VALUES ('Spider-Man');
INSERT INTO collection (collection_name) VALUES ('Deadpool');
INSERT INTO collection (collection_name) VALUES ('Avengers');
INSERT INTO collection (collection_name) VALUES ('X-Men');
INSERT INTO collection (collection_name) VALUES ('Moon Knight');
INSERT INTO collection (collection_name) VALUES ('Vision');
INSERT INTO collection (collection_name) VALUES ('Daredevil');
INSERT INTO collection (collection_name) VALUES ('Fantastic 4');




INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Spider-Man (2022) #1', 'Dan Slott', '2022-10-05', '1', 'https://i.annihil.us/u/prod/marvel/i/mg/c/10/633cefa06d1f4/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Spider-Man (2022) #2', 'Dan Slott', '2022-11-09', '1', 'https://i.annihil.us/u/prod/marvel/i/mg/6/e0/63658b3e8ce52/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Spider-Man (2022) #3', 'Dan Slott', '2022-12-07', '1', 'https://i.annihil.us/u/prod/marvel/i/mg/c/e0/63863cee9feb0/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Spider-Man 2099: Exodus (2022) #1', 'Steve Orlando', '2022-05-25', '1', 'https://i.annihil.us/u/prod/marvel/i/mg/3/a0/62b9e1e117828/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Spider-Man 2099: Exodus (2022) #2', 'Steve Orlando', '2022-06-15', '1', 'https://i.annihil.us/u/prod/marvel/i/mg/f/03/6328560d9c781/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Spider-Man 2099: Exodus (2022) #3', 'Steve Orlando', '2022-07-13', '1', 'https://i.annihil.us/u/prod/marvel/i/mg/f/10/62b9e0b69abac/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Spider-Man 2099: Exodus (2022) #4', 'Steve Orlando', '2022-07-13', '1', 'https://i.annihil.us/u/prod/marvel/i/mg/3/e0/62d0457d6586d/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Spider-Man 2099: Exodus (2022) #5', 'Steve Orlando', '2022-08-03', '1', 'https://i.annihil.us/u/prod/marvel/i/mg/f/10/62dab25ce3f8a/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Savage Spider-Man (2022) #1', 'Joe Kelly', '2022-02-02', '1', 'https://i.annihil.us/u/prod/marvel/i/mg/4/70/61f98e684092f/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Savage Spider-Man (2022) #2', 'Joe Kelly', '2022-03-23', '1', 'https://i.annihil.us/u/prod/marvel/i/mg/4/70/61f018d6d9799/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Savage Spider-Man (2022) #3', 'Joe Kelly', '2022-05-25', '1', 'https://i.annihil.us/u/prod/marvel/i/mg/e/e0/62b9e1ea1ae5b/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Savage Spider-Man (2022) #4', 'Joe Kelly', '2022-06-15', '1', 'https://i.annihil.us/u/prod/marvel/i/mg/9/20/62b9e1425e2ea/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Savage Spider-Man (2022) #5', 'Joe Kelly', '2022-07-20', '1', 'https://i.annihil.us/u/prod/marvel/i/mg/d/f0/62d0452848928/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Symbiote Spider-Man: Crossroads (2021) #1', 'Peter David', '2021-07-28', '1', 'https://i.annihil.us/u/prod/marvel/i/mg/6/00/60fad30f44148/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Symbiote Spider-Man: Crossroads (2021) #2', 'Peter David', '2021-08-25', '1', 'https://i.annihil.us/u/prod/marvel/i/mg/6/90/60e5e20f8d708/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Symbiote Spider-Man: Crossroads (2021) #3', 'Peter David', '2021-09-22', '1', 'https://i.annihil.us/u/prod/marvel/i/mg/0/03/614260491ac19/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Symbiote Spider-Man: Crossroads (2021) #4', 'Peter David', '2021-10-13', '1', 'https://i.annihil.us/u/prod/marvel/i/mg/2/c0/6160b6a683a21/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Symbiote Spider-Man: Crossroads (2021) #5', 'Peter David', '2021-11-24', '1', 'https://i.annihil.us/u/prod/marvel/i/mg/e/03/619e63668d142/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Miles Morales: Spider-Man Annual (2021) #1', 'Jed Mackay, Saladin Ahmed', '2021-08-18', '1', 'https://i.annihil.us/u/prod/marvel/i/mg/f/20/60e5e1d1b5fde/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Miles Morales: Spider-Man (2022) #1', 'Cody Ziglar', '2022-12-07', '1', 'https://i.annihil.us/u/prod/marvel/i/mg/3/c0/63863d142d94e/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Deadpool (2022) #1', 'Alyssa Wong', '2022-11-02', '2', 'https://i.annihil.us/u/prod/marvel/i/mg/3/00/63613a5218ce3/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Deadpool (2022) #2', 'Alyssa Wong', '2022-12-14', '2', 'https://i.annihil.us/u/prod/marvel/i/mg/e/d0/632dab92dbcf0/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Deadpool: Bad Blood (2022) #1', 'Rob Liefeld', '2022-04-06', '2', 'https://i.annihil.us/u/prod/marvel/i/mg/f/03/62432e8e49266/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Deadpool: Bad Blood (2022) #2', 'Chad Bowers, Rob Liefeld', '2022-06-01', '2', 'https://i.annihil.us/u/prod/marvel/i/mg/9/30/62b9e1c68a20e/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Deadpool: Bad Blood (2022) #3', 'Chad Bowers, Rob Liefeld', '2022-07-20', '2', 'https://i.annihil.us/u/prod/marvel/i/mg/6/40/62d04547da35f/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Deadpool: Bad Blood (2022) #4', 'Chad Bowers, Chris Sims, Rob Liefeld', '2022-08-31', '2', 'https://i.annihil.us/u/prod/marvel/i/mg/9/d0/6305072942033/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Deadpool: Black, White & Blood (2021) #1', 'James Stokoe, Tom Taylor, Ed Brisson', '2021-08-04', '2', 'https://i.annihil.us/u/prod/marvel/i/mg/1/a0/610411fa1a300/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Deadpool: Black, White & Blood (2021) #2', 'Maria Lapham, Daniel Warren Johnson, Karla Pacheco, David Lapham', '2021-09-08', '2', 'https://i.annihil.us/u/prod/marvel/i/mg/9/20/612e8db930c4b/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Deadpool: Black, White & Blood (2021) #3', 'Jay Baruchel, Frank Tieri, Stan Sakai', '2021-10-06', '2', 'https://i.annihil.us/u/prod/marvel/i/mg/2/f0/614b3fd493040/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Deadpool: Black, White & Blood (2021) #4', 'Christopher Yost, Michael Allred, Sanshiro Kasama', '2021-11-10', '2', 'https://i.annihil.us/u/prod/marvel/i/mg/f/90/6169eeaed4cf1/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Age Of Ultron (2013) #1', 'Brian Michael Bendis', '2013-03-06', '3', 'https://i.annihil.us/u/prod/marvel/i/mg/c/d0/51ed8cf71fd82/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Wolverine (1988) #1', 'Chris Claremont', '1988-11-01', '4', 'https://i.annihil.us/u/prod/marvel/i/mg/1/20/535145fc17988/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Wolverine (1988) #2', 'Chris Claremont', '1988-12-01', '4', 'https://i.annihil.us/u/prod/marvel/i/mg/b/60/4bc363d1ba22d/detail.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Wolverine (1988) #3', 'Chris Claremont', '1989-01-01', '4', 'https://i.annihil.us/u/prod/marvel/i/mg/6/20/4bc36550bd438/detail.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Wolverine (1988) #4', 'Chris Claremont', '1989-02-01', '4', 'https://i.annihil.us/u/prod/marvel/i/mg/6/10/5840374be06ac/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Wolverine (1988) #5', 'Chris Claremont', '1989-03-01', '4', 'https://i.annihil.us/u/prod/marvel/i/mg/6/b0/584040fe6d4c9/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Wolverine (1988) #6', 'Chris Claremont', '1989-04-01', '4', 'https://i.annihil.us/u/prod/marvel/i/mg/3/50/4bc3656e12582/detail.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Wolverine (1988) #7', 'Chris Claremont', '1989-04-01', '4', 'https://i.annihil.us/u/prod/marvel/i/mg/b/d0/4bc33c2e076bd/detail.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Wolverine (1988) #8', 'Chris Claremont', '1989-06-01', '4', 'https://i.annihil.us/u/prod/marvel/i/mg/8/90/58405b0ecca40/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Wolverine (1988) #9', 'Chris Claremont', '1989-07-01', '4', 'https://i.annihil.us/u/prod/marvel/i/mg/8/b0/4bc33c1d1c393/detail.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Wolverine (1988) #10', 'Chris Claremont', '1989-08-01', '4', 'https://i.annihil.us/u/prod/marvel/i/mg/6/80/535145e8cae46/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Wolverine (1988) #11', 'Chris Claremont', '1989-09-01', '4', 'https://i.annihil.us/u/prod/marvel/i/mg/9/40/4bc33a93ce915/detail.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Wolverine (1988) #12', 'Chris Claremont', '1989-09-29', '4', 'https://i.annihil.us/u/prod/marvel/i/mg/6/40/4bc36577ca046/detail.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Wolverine (1988) #13', 'Chris Claremont', '1989-10-01', '4', 'https://i.annihil.us/u/prod/marvel/i/mg/6/70/4bb846820f7d1/detail.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Wolverine (1988) #14', 'Chris Claremont', '1989-10-29', '4', 'https://i.annihil.us/u/prod/marvel/i/mg/4/f0/4bb7d2cebbe5c/detail.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Wolverine (1988) #15', 'Chris Claremont', '1989-11-01', '4', 'https://i.annihil.us/u/prod/marvel/i/mg/3/50/4c36530c96e32/detail.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Wolverine (1988) #16', 'Chris Claremont', '1989-11-10', '4', 'https://i.annihil.us/u/prod/marvel/i/mg/c/60/4bb79df06e6a1/detail.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Wolverine (1988) #17', 'Chris Claremont', '1989-11-21', '4', 'https://i.annihil.us/u/prod/marvel/i/mg/c/00/4bc37b2da27d6/detail.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Wolverine (1988) #18', 'Chris Claremont', '1989-12-01', '4', 'https://i.annihil.us/u/prod/marvel/i/mg/9/50/4bb79deb30914/detail.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Wolverine (1988) #19', 'Chris Claremont', '1989-12-14', '4', 'https://i.annihil.us/u/prod/marvel/i/mg/c/a0/4bb79ddcb0578/detail.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Wolverine (1988) #20', 'Chris Claremont', '1990-01-01', '4', 'https://i.annihil.us/u/prod/marvel/i/mg/2/f0/4bb79dafc4f8f/detail.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Wolverine (1988) #21', 'Chris Claremont', '1990-02-01', '4', 'https://i.annihil.us/u/prod/marvel/i/mg/6/30/4bb79da513651/detail.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Wolverine (1988) #22', 'Chris Claremont', '1990-03-01', '4', 'https://i.annihil.us/u/prod/marvel/i/mg/7/00/4bb79d815f852/detail.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Wolverine (1988) #23', 'Chris Claremont', '1990-04-01', '4', 'https://i.annihil.us/u/prod/marvel/i/mg/6/90/4c366865a04fd/detail.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Wolverine (1988) #24', 'Chris Claremont', '1990-05-01', '4', 'https://i.annihil.us/u/prod/marvel/i/mg/9/50/4bc37c944b45b/detail.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Wolverine (1988) #25', 'Chris Claremont', '1990-06-01', '4', 'https://i.annihil.us/u/prod/marvel/i/mg/f/00/4bb860faabe82/detail.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Moon Knight (2014) #1', 'Warren Ellis', '2014-03-05', '5', 'https://i.annihil.us/u/prod/marvel/i/mg/2/80/530e4d1b02751/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Moon Knight (2014) #2', 'Warren Ellis', '2014-04-02', '5', 'https://i.annihil.us/u/prod/marvel/i/mg/9/20/533475ade25bc/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Moon Knight (2014) #3', 'Warren Ellis', '2014-05-07', '5', 'https://i.annihil.us/u/prod/marvel/i/mg/5/e0/5363df2322ad4/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Moon Knight (2014) #4', 'Warren Ellis', '2014-06-04', '5', 'https://i.annihil.us/u/prod/marvel/i/mg/7/60/5388ddb538e86/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Moon Knight (2014) #5', 'Warren Ellis', '2014-07-02', '5', 'https://i.annihil.us/u/prod/marvel/i/mg/e/e0/53ac5aa85ca8a/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Moon Knight (2014) #6', 'Warren Ellis', '2014-08-06', '5', 'https://i.annihil.us/u/prod/marvel/i/mg/c/f0/53d6a97dbd9e3/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Moon Knight (2014) #7', 'Brian Wood', '2014-09-03', '5', 'https://i.annihil.us/u/prod/marvel/i/mg/1/70/53909994d74a6/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Moon Knight (2014) #8', 'Brian Wood', '2014-10-01', '5', 'https://i.annihil.us/u/prod/marvel/i/mg/d/20/542336582234b/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Moon Knight (2014) #9', 'Brian Wood', '2014-11-19', '5', 'https://i.annihil.us/u/prod/marvel/i/mg/6/90/5464f477dcb31/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Moon Knight (2014) #10', 'Brian Wood', '2014-12-17', '5', 'https://i.annihil.us/u/prod/marvel/i/mg/2/f0/5491a42b02d75/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Vision (2015) #1', 'Tom King', '2015-11-04', '6', 'https://i.annihil.us/u/prod/marvel/i/mg/6/30/5637ada325f34/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Vision (2015) #2', 'Tom King', '2015-12-02', '6', 'https://i.annihil.us/u/prod/marvel/i/mg/4/00/591c57456e0f7/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Vision (2015) #3', 'Tom King', '2015-01-06', '6', 'https://i.annihil.us/u/prod/marvel/i/mg/f/a0/568aa87faf2ae/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Vision (2015) #4', 'Tom King', '2015-02-03', '6', 'https://i.annihil.us/u/prod/marvel/i/mg/4/00/56a7c17f64377/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Vision (2015) #5', 'Tom King', '2015-03-09', '6', 'https://i.annihil.us/u/prod/marvel/i/mg/7/10/56d9b84209ae9/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Vision (2015) #6', 'Tom King', '2016-04-06', '6', 'https://i.annihil.us/u/prod/marvel/i/mg/c/d0/56fed74db493a/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Daredevil (2019) #1', 'Chip Zdarsky', '2019-02-06', '7', 'https://i.annihil.us/u/prod/marvel/i/mg/6/a0/6124f59e91d1d/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Daredevil (2019) #2', 'Chip Zdarsky', '2019-02-27', '7', 'https://i.annihil.us/u/prod/marvel/i/mg/c/60/5c6dda69ad541/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Daredevil (2019) #3', 'Chip Zdarsky', '2019-03-27', '7', 'https://i.annihil.us/u/prod/marvel/i/mg/a/00/5c93f63ea5c95/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Daredevil (2019) #4', 'Chip Zdarsky', '2019-04-19', '7', 'https://i.annihil.us/u/prod/marvel/i/mg/f/50/5cacf6fd9305a/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Daredevil (2019) #5', 'Chip Zdarsky', '2019-05-15', '7', 'https://i.annihil.us/u/prod/marvel/i/mg/9/90/5cd44eb9813b6/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Daredevil (2019) #6', 'Chip Zdarsky', '2019-05-29', '7', 'https://i.annihil.us/u/prod/marvel/i/mg/3/e0/5ce4017b98584/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Daredevil (2019) #7', 'Chip Zdarsky', '2019-06-19', '7', 'https://i.annihil.us/u/prod/marvel/i/mg/8/f0/5d0130a885fda/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Fantastic 4 (2018) #1', 'Dan Slott', '2018-08-08', '8', 'https://i.annihil.us/u/prod/marvel/i/mg/8/f0/5b62111e4af6f/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Fantastic 4 (2018) #2', 'Dan Slott', '2018-09-12', '8', 'https://i.annihil.us/u/prod/marvel/i/mg/6/40/5b9016e1df624/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Fantastic 4 (2018) #3', 'Dan Slott', '2018-11-14', '8', 'https://i.annihil.us/u/prod/marvel/i/mg/6/50/5be371766f20b/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Fantastic 4 (2018) #4', 'Dan Slott', '2018-11-28', '8', 'https://i.annihil.us/u/prod/marvel/i/mg/a/20/5bf4776dbd387/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Fantastic 4 (2018) #5', 'Dan Slott', '2018-12-26', '8', 'https://i.annihil.us/u/prod/marvel/i/mg/8/a0/5c1aa35534e3b/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Fantastic 4 (2018) #6', 'Dan Slott', '2019-01-16', '8', 'https://i.annihil.us/u/prod/marvel/i/mg/4/00/5c379556a57d3/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Fantastic 4 (2018) #7', 'Dan Slott', '2019-02-27', '8', 'https://i.annihil.us/u/prod/marvel/i/mg/1/a0/5c6dda05eab2c/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Fantastic 4 (2018) #8', 'Dan Slott', '2019-03-27', '8', 'https://i.annihil.us/u/prod/marvel/i/mg/4/40/5c93f5c666429/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Fantastic 4 (2018) #9', 'Dan Slott', '2019-04-24', '8', 'https://i.annihil.us/u/prod/marvel/i/mg/7/a0/5cb89e39964f4/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Fantastic 4 (2018) #10', 'Dan Slott', '2019-05-29', '8', 'https://i.annihil.us/u/prod/marvel/i/mg/b/f0/5ce40afe062f3/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Hulk (2021) #1', 'Donny Cates', '2021-11-24', '3', 'https://i.annihil.us/u/prod/marvel/i/mg/3/30/6215050e6c8d5/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Hulk (2021) #2', 'Donny Cates', '2021-12-15', '3', 'https://i.annihil.us/u/prod/marvel/i/mg/5/e0/61a92d071ba29/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Hulk (2021) #3', 'Donny Cates', '2021-01-19', '3', 'https://i.annihil.us/u/prod/marvel/i/mg/6/30/61cf40378a41f/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Hulk (2021) #4', 'Donny Cates', '2021-02-16', '3', 'https://i.annihil.us/u/prod/marvel/i/mg/f/b0/6201554a2814c/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Hulk (2021) #5', 'Donny Cates', '2021-03-30', '3', 'https://i.annihil.us/u/prod/marvel/i/mg/b/70/623b2db71ea1b/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Thor (2020) #1', 'Donny Cates', '2020-01-01', '3', 'https://i.annihil.us/u/prod/marvel/i/mg/8/b0/5e00da382a27d/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Thor (2020) #2', 'Donny Cates', '2020-01-29', '3', 'https://i.annihil.us/u/prod/marvel/i/mg/4/70/5e28905e7597c/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Thor (2020) #3', 'Donny Cates', '2020-02-12', '3', 'https://i.annihil.us/u/prod/marvel/i/mg/4/b0/5e3b35788688f/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Thor (2020) #4', 'Donny Cates', '2020-03-11', '3', 'https://i.annihil.us/u/prod/marvel/i/mg/3/80/5e5835cd50309/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Thor (2020) #5', 'Donny Cates', '2020-06-24', '3', 'https://i.annihil.us/u/prod/marvel/i/mg/3/c0/5e86534691b2c/clean.jpg');
INSERT INTO comic (comic_name,author,release_date,collection_id,comic_image) VALUES ('Thor (2020) #6', 'Donny Cates', '2020-08-19', '3', 'https://i.annihil.us/u/prod/marvel/i/mg/3/a0/5f2c34257946a/clean.jpg');







COMMIT TRANSACTION;



