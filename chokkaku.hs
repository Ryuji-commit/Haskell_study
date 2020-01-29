chokkaku :: Integer -> [(Integer, Integer, Integer)]
chokkaku n = [(x,y,z) | x <- [1..n], y <- [x+1..n], z <- [y+1..n], x*x+y*y==z*z]