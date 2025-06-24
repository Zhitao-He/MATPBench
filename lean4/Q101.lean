def nRows : Nat := 50
def T : Nat → Nat → Nat
  | 0,   j => 2 * j + 1
  | i+1, j => T i j + T i (j+1)
def sumOverCols (rowIdx colLimit : Nat) (f : Nat → Nat → Nat) (currentColIdx : Nat) : Nat :=
  if currentColIdx < colLimit then
    f rowIdx currentColIdx + sumOverCols rowIdx colLimit f (currentColIdx + 1)
  else
    0
termination_by colLimit - currentColIdx
def sumOverRows (f : Nat → Nat → Nat) (currentRowIdx : Nat) : Nat :=
  if currentRowIdx < nRows then
    sumOverCols currentRowIdx (nRows - currentRowIdx) f 0 + sumOverRows f (currentRowIdx + 1)
  else
    0
termination_by nRows - currentRowIdx
theorem putnam_2003_a2 :
  sumOverRows (fun i j => if T i j % 67 = 0 then 1 else 0) 0 = 17 := by sorry