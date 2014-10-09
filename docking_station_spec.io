doFile("docking_station.io")
doFile("bike.io")

assertEqual := method(expected, actual, expected == actual)

oldStreet := DockingStation clone
bike := Bike clone
brokenBike := Bike clone break
oldStreet bikes append(bike, brokenBike)

("Knows which bikes are available: " .. assertEqual(list(bike), oldStreet availableBikes)) println
("Knows which bikes are broken: " .. assertEqual(list(brokenBike), oldStreet brokenBikes)) println

oldStreet dock(Bike clone)

("Docking a bike adds it to the station: " .. assertEqual(3, oldStreet bikes size)) println

oldStreet releaseBike

("Releasing a bike deletes it from the station: " .. assertEqual(2, oldStreet bikes size)) println

oldStreet releaseBike
oldStreet releaseBike

("A broken bike cannot be released: " .. assertEqual(1, oldStreet bikes size)) println