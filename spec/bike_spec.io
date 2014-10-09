doFile("lib/bike.io")

assertEqual := method(expected, actual, expected == actual)

("A new bike is not broken: " .. assertEqual(false, Bike clone broken)) println
("A bike can be broken: " .. assertEqual(true, Bike clone die broken)) println
("A bike can be fixed after being broken: " .. assertEqual(false, Bike clone die fix broken)) println