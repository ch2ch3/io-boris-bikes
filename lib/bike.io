Bike := Object clone do (

  init := method(
    self broken := false
    self
  )

  die := method(
    self broken := true
    self
  )

  fix := method(
    self broken := false
    self
  )

)