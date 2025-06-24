import Mathlib.Data.Real.Sqrt


namespace ProblemIS384
def cylinderRadius : Real := 4
def cylinderHeight : Real := 10
def cubeSideLength : Real := 8


noncomputable def xContact : Real := cylinderRadius * Real.sqrt (3 / 2)


noncomputable def vDisplacedWater : Real := (1 / 6) * xContact ^ 3


noncomputable def vSquared : Real := vDisplacedWater ^ 2
end ProblemIS384
