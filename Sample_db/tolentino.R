install.packages('dplyr')
install.packages('dbplyr')
library(dplyr,dbplyr)
install.packages('RMariaDB')
library(RMariaDB)

connection <- dbConnect(RMariaDB::MariaDB(), 
                        dsn="mysql",
                        Server = "localhost",
                        dbname = "tolentino_movie", 
                        user = "root", 
                        password ='')

dbListTables(connection)

dbListFields(connection,"movie_content")

posts_dta <- dbGetQuery(connection, "SELECT * FROM tolentino_movie.movie_content")
# checking for the columns and its content
glimpse(posts_dta)

posts_dta[c(1:10),]

query <- "INSERT INTO movie_content (movie_title, reviewer, date_of_review, rating, title_of_review, review) VALUES ('Hercules', 'boblipton', '2020-10-10', '7/10', 'I Actually Liked This', 'Dwayne Johnson plays Hercules as he goes from a mercenary for John Hurt -- the English one -- to someone with a conscience. I expected this to be about as ridiculous as The Legend of Hercules, released the same year. I was pleasantly surprised. Not only is the production and cast first rate, with some fine cinematography by Dante Spinotti, but director Brett Ratner staging allowed me to play the where did they lift that shot from game I identified bits from SAMSON AND DELILAH, SPARTACUS, and CONAN THE BARBARIAN during the denouement alone. It is based on a graphic novel by Steve Moore. Because he got no money from it, Moore asked fr his name to be removed from the credits. He died soon after he made the request, and so wound up not only with the credit, but a dedication. All free to the producers!')"
query_result<- dbSendQuery(connection, query)

dbClearResult(query_result)

dbDisconnect(connection)


query1 <- "INSERT INTO movie_content (movie_title, reviewer, date_of_review, rating, title_of_review, review) VALUES ('Hercules', 'neil-476', '2014-08-08', '7/10', 'Another case of false advertising', 'Hercules and chums are mercenaries, pressed into service for Lord Cotys to put down a rebel uprising which looks likely to overthrow the throne. The trailer teases this movie as being a myths and monsters movie: it is not. It is a fairly routine swords and sandals actioner, and the mythical critters teased in the trailer all come before the opening title, and are either tall tales depicted, or things seen unclearly from a distance. What is left is a rather dark film with a lot of battle action, pitched uneasily at a level which is too graphic for family viewing and not graphic enough for those who like blood and dismemberment. There is a single F word - unnecessary and out of place. Dwayne Johnson does this stuff well - he looks good, has great physical presence and, even when the part is somewhat darker than usual, he remains very likable. The supporting cast are all quite good - it was interesting to see Rufus Sewell playing a goodie for once (kind of like a young Ian McShane even though McShane was also in the film, with all the best moments of humour), and John Hurt gets to play both ends of the spectrum, meek and scenery-chewing. I quite liked this - it is certainly a lot better than this year previous Hercules offering - but felt that it was a missed opportunity: they promised me monsters and then did not deliver them!')"
query_result1<- dbSendQuery(connection, query1)
dbClearResult(query_result1)
dbDisconnect(connection)


query2 <- "INSERT INTO movie_content (movie_title, reviewer, date_of_review, rating, title_of_review, review) VALUES ('Hercules', 'TheLittleSongBird', '2016-09-19', '6/10', 'Nowhere near as bad as was expected', 'Of the two Hercules films released in 2014, this one is the far superior of the two. The other being the awful The Legend of Hercules, with Liam McIntyre as its sole saving grace. Hercules was very flawed and was very misleadingly advertised, but it was decent.')"
query_result2<- dbSendQuery(connection, query2)
dbClearResult(query_result2)
dbDisconnect(connection)


query3 <- "INSERT INTO movie_content (movie_title, reviewer, date_of_review, rating, title_of_review, review) VALUES ('Hercules', 'TheOneThatYouWanted', '2017-11-10', '9/10', 'Wish I watched it sooner. Great flick.', 'Hercules I can not believe it took me this long to finally watch this because I love the Rock and I love action. Anyway, this is one of those great action films you can watch at any age and enjoy. However it is the type you movie you have to watch completely to get the full effect because the last 20 minutes are where the film really pays off with all the set pieces in place. Great family film and a great film in general.')"
query_result3<- dbSendQuery(connection, query3)
dbClearResult(query_result3)
dbDisconnect(connection)


query4 <- "INSERT INTO movie_content (movie_title, reviewer, date_of_review, rating, title_of_review, review) VALUES ('Hercules', 'acutler', '2014-7-26', '7/10', 'Trailer misleads badly- the movie is not bad at all', 'Warning: Spoilers')"
query_result4<- dbSendQuery(connection, query4)
dbClearResult(query_result4)
dbDisconnect(connection)


query5 <- "INSERT INTO movie_content (movie_title, reviewer, date_of_review, rating, title_of_review, review) VALUES ('Hercules', 'toshnick', '2019-9-13', '10/10', 'Awesome', 'I love Greek mythology film and this did not disappoint I remember going to see this after finishing leg day and could just to say walk haha, the rock seemed born to play this role and did not disappoint.')"
query_result5<- dbSendQuery(connection, query5)
dbClearResult(query_result5)
dbDisconnect(connection)


query6 <- "INSERT INTO movie_content (movie_title, reviewer, date_of_review, rating, title_of_review, review) VALUES ('Hercules', 'jawneyfloros', '2018-11-19', '10/10', 'the rock as Hercules', 'Review: I loved this movie because it is a brand-new take on Hercules. Instead of focusing on just the myth or the legend of Hercules this movie focusing more on the concept of is Hercules a human or a god. The direction and screenplay are both incredible. The casting and acting are incredible also. Especially by the Rock as Hercules and Aksei Hennie as Tydus. The cinematography is absolutely incredible. The sets and costumes match the ancient Greek period which is also incredible. All in all I would give this five out of a possible five stars.')"
query_result6<- dbSendQuery(connection, query6)
dbClearResult(query_result6)
dbDisconnect(connection)


query7 <- "INSERT INTO movie_content (movie_title, reviewer, date_of_review, rating, title_of_review, review) VALUES ('Hercules', 'catpantry', '2020-12-02', '10/10', 'Review', 'Better than hunger games by 25 percent. Worse than clueless by 65 percent. God gave my life to a pigeon. I can see him comfortably in a bed with an empty calm mind.')"
query_result7<- dbSendQuery(connection, query7)
dbClearResult(query_result7)
dbDisconnect(connection)


query8 <- "INSERT INTO movie_content (movie_title, reviewer, date_of_review, rating, title_of_review, review) VALUES ('Hercules', 'ahmedm0ustafa', '2021-11-14', '7/10', 'It was better than expected.', 'I thought that I was going to see a remake of the cartoon movie or something like it, but it was more reality actually.. Although it has some parts no mind believes, I enjoyed the movie after all.')"
query_result8<- dbSendQuery(connection, query8)
dbClearResult(query_result8)
dbDisconnect(connection)


query9 <- "INSERT INTO movie_content (movie_title, reviewer, date_of_review, rating, title_of_review, review) VALUES ('Hercules', 'mrmuffin316', '2020-02-10', '10/10', 'Great story', 'Story is different and it works. It is worth the time and emotion from tears to anger.')"
query_result9<- dbSendQuery(connection, query9)
dbClearResult(query_result9)
dbDisconnect(connection)
  
