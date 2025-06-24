import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Arctan
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Data.Real.Basic
open Real 
/-!
Formalization of the following problem:
A boat is at the current point. Write down the bearing that the boat should travel on to return to the starting point is N 34° W.
We interpret this as:
1. There are two points in the Euclidean plane: the starting point and the current point.
2. The bearing is measured as degrees clockwise from North.
3. "N 34° W" means 34 degrees West of North, i.e., 326 degrees clockwise from North.
4. The assertion is that the bearing from the current point to the starting point is N 34° W.
-/
namespace BoatBearingProblem
abbrev Point2D := EuclideanSpace ℝ (Fin 2)
noncomputable def bearingCwFromNorth (v : Point2D) (hv : v ≠ 0) : ℝ :=
  let x := v 0
  let y := v 1
  let angleRadFromEastCcw :=
    if x > 0 then Real.arctan (y / x)
    else if x < 0 ∧ y ≥ 0 then Real.arctan (y / x) + Real.pi
    else if x < 0 ∧ y < 0 then Real.arctan (y / x) - Real.pi
    else if x = 0 ∧ y > 0 then Real.pi / 2
    else if x = 0 ∧ y < 0 then -Real.pi / 2
    else 0 
  let angleDegFromEastCcw := angleRadFromEastCcw * (180 / Real.pi)
  let rawBearingDeg := 90 - angleDegFromEastCcw
  if rawBearingDeg < 0 then
    rawBearingDeg + 360
  else
    rawBearingDeg
noncomputable def bearingN34W : ℝ := 326.0
theorem boatReturnBearingIsN34W
    (startPoint currentPoint : Point2D)
    (h_points_distinct : startPoint ≠ currentPoint) :
  let returnVector := startPoint -ᵥ currentPoint
  bearingCwFromNorth returnVector (vsub_ne_zero.mpr h_points_distinct) = bearingN34W :=
by sorry
end BoatBearingProblem
