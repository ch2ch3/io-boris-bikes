DockingStation := Object clone do(
  init := method(
    self bikes := List clone
  )

  availableBikes := method(
    self bikes select(bike, bike broken == false)
  )

  brokenBikes := method(
    self bikes select(bike, bike broken == true)
  )

  dock := method(bike,
    self bikes append(bike)
  )

  release := method(bike,
    self bikes remove(bike)
  )
)