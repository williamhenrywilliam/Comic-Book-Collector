"BEGIN TRANSACTION;"




INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');




INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Spider-Man (2022) #1', 'Dan Slott', '2022-10-05', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Spider-Man (2022) #2', 'Dan Slott', '2022-11-09', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Spider-Man (2022) #3', 'Dan Slott', '2022-12-07', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Spider-Man 2099: Exodus (2022) #1', 'Steve Orlando', '2022-05-25', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Spider-Man 2099: Exodus (2022) #2', 'Steve Orlando', '2022-06-15', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Spider-Man 2099: Exodus (2022) #3', 'Steve Orlando', '2022-07-13', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Spider-Man 2099: Exodus (2022) #4', 'Steve Orlando', '2022-07-13', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Spider-Man 2099: Exodus (2022) #5', 'Steve Orlando', '2022-08-03', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Savage Spider-Man (2022) #1', 'Joe Kelly', '2022-02-02', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Savage Spider-Man (2022) #2', 'Joe Kelly', '2022-03-23', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Savage Spider-Man (2022) #3', 'Joe Kelly', '2022-05-25', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Savage Spider-Man (2022) #4', 'Joe Kelly', '2022-06-15', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Savage Spider-Man (2022) #5', 'Joe Kelly', '2022-07-20', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Symbiote Spider-Man: Crossroads (2021) #1', 'Peter David', '2021-07-28', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Symbiote Spider-Man: Crossroads (2021) #2', 'Peter David', '2021-08-25', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Symbiote Spider-Man: Crossroads (2021) #3', 'Peter David', '2021-09-22', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Symbiote Spider-Man: Crossroads (2021) #4', 'Peter David', '2021-10-13', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Symbiote Spider-Man: Crossroads (2021) #5', 'Peter David', '2021-11-24', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Miles Morales: Spider-Man Annual (2021) #1', 'Jed Mackay, Saladin Ahmed', '2021-08-18', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Miles Morales: Spider-Man (2022) #1', 'Cody Ziglar', '2022-12-07', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Deadpool (2022) #1', 'Alyssa Wong', '2022-11-02', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Deadpool (2022) #2', 'Alyssa Wong', '2022-12-14', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Deadpool: Bad Blood (2022) #1', 'Rob Liefeld', '2022-04-06', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Deadpool: Bad Blood (2022) #2', 'Chad Bowers, Rob Liefeld', '2022-06-01', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Deadpool: Bad Blood (2022) #3', 'Chad Bowers, Rob Liefeld', '2022-07-20', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Deadpool: Bad Blood (2022) #4', 'Chad Bowers, Chris Sims, Rob Liefeld', '2022-08-31', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Deadpool: Black, White & Blood (2021) #1', 'James Stokoe, Tom Taylor, Ed Brisson', '2021-08-04', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Deadpool: Black, White & Blood (2021) #2', 'Maria Lapham, Daniel Warren Johnson, Karla Pacheco, David Lapham', '2021-09-08', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Deadpool: Black, White & Blood (2021) #3', 'Jay Baruchel, Frank Tieri, Stan Sakai', '2021-10-06', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Deadpool: Black, White & Blood (2021) #4', 'Christopher Yost, Michael Allred, Sanshiro Kasama', '2021-11-10', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Age Of Ultron', 'Brian Michael Bendis', '2013-03-06', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Wolverine #1', 'Chris Claremont', '1988-09-02', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Wolverine #2', 'Chris Claremont', '1988-10-02', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Wolverine #3', 'Chris Claremont', '1988-11-02', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Wolverine #4', 'Chris Claremont', '1989-01-02', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Wolverine #5', 'Chris Claremont', '1989-02-02', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Wolverine #6', 'Chris Claremont', '1989-03-02', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Wolverine #7', 'Chris Claremont', '1989-04-02', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Wolverine #8', 'Chris Claremont', '1989-05-02', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Wolverine #9', 'Chris Claremont', '1989-06-02', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Wolverine #10', 'Chris Claremont', '1989-07-02', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Wolverine #11', 'Chris Claremont', '1989-08-02', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Wolverine #12', 'Chris Claremont', '1989-09-02', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Wolverine #13', 'Chris Claremont', '1989-10-02', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Wolverine #14', 'Chris Claremont', '1989-11-02', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Wolverine #15', 'Chris Claremont', '1990-01-02', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Wolverine #16', 'Chris Claremont', '1990-02-02', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Wolverine #17', 'Chris Claremont', '1990-03-02', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Wolverine #18', 'Chris Claremont', '1990-04-02', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Wolverine #19', 'Chris Claremont', '1990-06-02', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Wolverine #20', 'Chris Claremont', '1990-07-02', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Wolverine #21', 'Chris Claremont', '1990-08-02', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Wolverine #22', 'Chris Claremont', '1990-09-02', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Wolverine #23', 'Chris Claremont', '1990-10-02', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Wolverine #24', 'Chris Claremont', '1990-11-02', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Wolverine #25', 'Chris Claremont', '1991-01-02', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Moon Knight #1', 'Shalvey Ellis', '2013-01-11', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Moon Knight #2', 'Shalvey Ellis', '2013-02-11', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Moon Knight #3', 'Shalvey Ellis', '2013-03-11', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Moon Knight #4', 'Shalvey Ellis', '2013-04-11', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Moon Knight #5', 'Shalvey Ellis', '2013-05-11', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Moon Knight #6', 'Shalvey Ellis', '2013-06-11', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Moon Knight #7', 'Shalvey Ellis', '2013-07-11', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Moon Knight #8', 'Shalvey Ellis', '2013-08-11', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Moon Knight #9', 'Shalvey Ellis', '2014-03-20', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Moon Knight #10', 'Shalvey Ellis', '2014-06-16', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Vision #1', 'Walta King', '2015-01-08', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Vision #2', 'Walta King', '2015-02-08', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Vision #3', 'Walta King', '2015-03-08', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Vision #4', 'Walta King', '2015-04-08', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Vision #5', 'Walta King', '2015-07-08', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Vision #6', 'Walta King', '2016-10-15', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Daredevil (2019) #1', 'Checchetto Zdarsky', '2019-01-19', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Daredevil (2019) #2', 'Checchetto Zdarsky', '2019-02-19', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Daredevil (2019) #3', 'Checchetto Zdarsky', '2019-03-19', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Daredevil (2019) #4', 'Checchetto Zdarsky', '2019-04-19', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Daredevil (2019) #5', 'Checchetto Zdarsky', '2019-05-19', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Daredevil (2019) #6', 'Checchetto Zdarsky', '2019-06-19', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Daredevil (2019) #7', 'Checchetto Zdarsky', '2019-07-19', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Fantastic 4 (2018) #1', 'Pichelli Slott', '2018-01-22', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Fantastic 4 (2018) #2', 'Pichelli Slott', '2018-02-22', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Fantastic 4 (2018) #3', 'Pichelli Slott', '2018-03-22', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Fantastic 4 (2018) #4', 'Pichelli Slott', '2018-06-22', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Fantastic 4 (2018) #5', 'Pichelli Slott', '2018-07-22', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Fantastic 4 (2018) #6', 'Pichelli Slott', '2018-08-22', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Fantastic 4 (2018) #7', 'Pichelli Slott', '2018-09-22', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Fantastic 4 (2018) #8', 'Pichelli Slott', '2018-10-22', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Fantastic 4 (2018) #9', 'Pichelli Slott', '2019-03-22', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Fantastic 4 (2018) #10', 'Pichelli Slott', '2018-05-22', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Hulk (2021) #1', 'Ottley Cates', '2021-02-05', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Hulk (2021) #2', 'Ottley Cates', '2021-03-05', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Hulk (2021) #3', 'Ottley Cates', '2021-04-05', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Hulk (2021) #4', 'Ottley Cates', '2021-07-05', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Hulk (2021) #5', 'Ottley Cates', '2021-10-17', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Thor (2020) #1', 'Klein Cates', '2020-02-23', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Thor (2020) #2', 'Klein Cates', '2020-03-23', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Thor (2020) #3', 'Klein Cates', '2020-04-14', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Thor (2020) #4', 'Klein Cates', '2020-05-03', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Thor (2020) #5', 'Klein Cates', '2020-06-07', '1');
INSERT INTO comic (comic_name,author,release_date,collection_id) VALUES ('Thor (2020) #6', 'Klein Cates', '2020-07-13', '1');




INSERT INTO collection (collection_name) VALUES ('Test');
INSERT INTO collection (collection_name) VALUES ('Spider-Man');
INSERT INTO collection (collection_name) VALUES ('Deadpool');
INSERT INTO collection (collection_name) VALUES ('Avengers');
INSERT INTO collection (collection_name) VALUES ('X-Men');
INSERT INTO collection (collection_name) VALUES ('Moon Knight');
INSERT INTO collection (collection_name) VALUES ('Vision');
INSERT INTO collection (collection_name) VALUES ('Daredevil');
INSERT INTO collection (collection_name) VALUES ('Fantastic 4');



"COMMIT TRANSACTION;"



