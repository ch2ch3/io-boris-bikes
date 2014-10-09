Person := Object clone do(
  init := method(
    self bike := list()
  )

  rentBikeFrom := method(station,
    self bike append(station releaseBike)
  )
)