Actor.destroy_all
Film.destroy_all

tom = Actor.find_or_create_by("Tom Cruise")
bruce = Actor.find_or_create_by("Bruce Willis")
angie = Actor.find_or_create_by("Angelina Jolie")
anne = Actor.find_or_create_by("Anne Hathaway")

mi = Film.find_or_create_by(title: "Mission Impossible", year: "1996", genre: "Action")
topgun = Film.find_or_create_by(title: "Top Gun", year: "1986", genre: "Action")
jack = Film.find_or_create_by(title: "Jack Reacher", year: "2012", genre: "Action")

bruno = Film.find_or_create_by(title: "The Return of Bruno", year: "1987", genre: "Comedy")
diehard = Film.find_or_create_by(title: "Die Hard", year: "1988", genre: "Action")
unbreak = Film.find_or_create_by(title: "Unbreakable", year: "2000", genre: "Drama")

wanted = Film.find_or_create_by(title: "Wanted", year: "2008", genre: "Action")
kungfu = Film.find_or_create_by(title: "Kung Fu Panda", year: "2008", genre: "Animation")
salt = Film.find_or_create_by(title: "Salt", year: "2010", genre: "Action")

dark = Film.find_or_create_by(title: "The Dark Knight Rises", year: "2012", genre: "Action")
diaries = Film.find_or_create_by(title: "The Princess Diaries", year: "2001", genre: "Comedy")
les = Film.find_or_create_by(title: "Les Miserables", year: "2012", genre: "Drama")
