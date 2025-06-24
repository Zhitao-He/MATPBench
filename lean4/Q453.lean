def numSidesTriangle : Nat := 3
def numSidesSquare : Nat := 4
def numSidesPentagon : Nat := 5
def numSidesHexagon : Nat := 6
def numSidesHeptagon : Nat := 7
def numSidesOctagon : Nat := 8
def numConnections : Nat := 5
def totalSides : Nat :=
  numSidesTriangle +
  numSidesSquare +
  numSidesPentagon +
  numSidesHexagon +
  numSidesHeptagon +
  numSidesOctagon - 2 * numConnections
theorem final_polygon_has_23_sides : totalSides = 23 := by sorry