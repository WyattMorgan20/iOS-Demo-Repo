import UIKit

var movies = ["Tom Cruise" : "Mission Impossible", "Jeremy Renner" : "Mission Impossible", "Gal Gadot" : "Wonder Woman"]
print(movies)

movies.removeValue(forKey: "Gal Gadot")
print(movies)

var games = [1 : "Destiny 2", 2 : "Horizon: Forbidden West", 3 : "God of War Ragnarok"]
print(games)

print(games.count)

games[4] = "Elden Ring Nightreign"
print(games)

for(key, values) in games{
    print(values)
}

for(key, values) in games{
    print(key)
}

for(key, values) in games{
    print(key, values)
}
