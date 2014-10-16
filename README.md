Io-Boris-Bikes
==============
This is a quick Io rewrite of an [older project done in Ruby](https://github.com/ch2ch3/boris-bikes-the-second). It simulates the Barclays Cycle Hire system in London. To summarise, a person can rent a bike from one station and return it to another. A bike can be broken and fixed. Broken bikes will not be rented out.

How to use
----------
Clone the repository:
```shell
$ git clone git@github.com:ch2ch3/io-boris-bikes.git
```

Change into the directory:
```shell
$ cd io-boris-bikes
```

To run the tests:
```shell
$ io spec/bike_spec.io
$ io spec/docking_station_spec.io
$ io spec/person_spec.io
```

To run the code:
```shell
$ io

  Io> doFile("lib/bike.io")
  Io> doFile("lib/docking_station.io")
  Io> doFile("lib/person.io")
  Io> oldStreet := DockingStation clone # creates a new docking station
  Io> oldStreet bikes append (Bike clone) # creates a new bike inside the docking station
  Io> ethel := Person clone # creates a new person
  Io> ethel rentBikeFrom(oldStreet) # ethel now has a bike
```