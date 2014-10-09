doFile("lib/person.io")
doFile("lib/docking_station.io")
doFile("lib/bike.io")

assertEqual := method(expected, actual, expected == actual)

bike := Bike clone
oldStreet := DockingStation clone
oldStreet bikes append(bike)
ethel := Person clone

ethel rentBikeFrom(oldStreet)

("Can rent a bike from a station: " .. assertEqual(bike, ethel bike first)) println