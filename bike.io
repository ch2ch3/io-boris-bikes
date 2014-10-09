Bike := Object clone do (

  init := method(
    self broken := false
    self
  )

  break := method(
    self broken := true
    self
  )

  fix := method(
    self broken := false
    self
  )

)