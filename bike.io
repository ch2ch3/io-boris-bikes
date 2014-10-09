Bike := Object clone

Bike broken ::= false

Bike init := method(self setBroken(false))

Bike break := method(self setBroken(true))

Bike fix := method(self setBroken(false))