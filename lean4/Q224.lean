import Mathlib.Geometry.Euclidean.Basic -- EuclideanSpace, norm, vector operations
import Mathlib.Data.Real.Basic         -- ℝ, pi
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic -- Real.sin, Real.cos, Real.acos
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Inverse -- Real.acos
import Mathlib.Data.Real.Sqrt         -- Real.sqrt

open Real

-- We work in the Euclidean plane (R²), modeled as vectors from the origin.
abbrev PPoint := EuclideanSpace ℝ (Fin 2)

namespace BoatNavigation

noncomputable section

/-- Convert degrees to radians. -/
def degToRad (d : ℝ) : ℝ := d * (pi / 180)

/-- Convert radians to degrees. -/
def radToDeg (r : ℝ) : ℝ := r * (180 / pi)

/-- The starting point (origin). -/
def O : PPoint := 0

/--
Displacement for the first leg: 12 km at bearing N 14° E.
North is +y; East is +x.
x = d * sin θ (eastward), y = d * cos θ (northward), where θ = 14°.
-/
def vecLeg1 : PPoint :=
  let θ := degToRad 14
  let d := (12 : ℝ)
  ![d * sin θ, d * cos θ]

/-- Position after first leg. -/
def P1 : PPoint := O + vecLeg1

/--
Displacement for the second leg: 16 km at bearing S 49° W.
South is -y; West is -x.
To interpret S 49° W as angle counterclockwise from +y: S is 180°, then 49° towards W ⇒ 180° + 49° = 229° from North (counterclockwise; i.e., standard polar system).
But we want to use bearings relative to the coordinate axes.
Alternatively: 
- The vector goes in a direction 49° West of South.
- That is, from positive y, rotate 180° (to -y), then 49° towards the negative x axis: meaning angle = 180° + 49° = 229°.
So: x = 16*sin(229°), y = 16*cos(229°)

Alternatively, directly use:
x = -d * sin(49°), y = -d * cos(49°)
(because S 49° W means from South, 49° towards West, so x is negative, y is negative)
-/
def vecLeg2 : PPoint :=
  let θ := degToRad 49
  let d := (16 : ℝ)
  ![-d * sin θ, -d * cos θ]

/-- Final position (current point) after two legs. -/
def P2 : PPoint := P1 + vecLeg2

/-- Vector from current point back to start. -/
def returnVec : PPoint := O - P2

/--
Compute the bearing (in degrees) of a vector v as N α W, if v points to the North-West quadrant, else none.
A vector (vx, vy), NW means vx<0, vy>0, then α = arccos(vy / ||v||) (the angle from North towards West).
-/
def getNWBearingAngle (v : PPoint) : Option ℝ :=
  let vx := v 0
  let vy := v 1
  if vx < 0 ∧ vy > 0 ∧ v ≠ 0 then
    some (radToDeg (acos (vy / ‖v‖)))
  else
    none

/--
The formal statement: "The bearing to return is N 34° W."
-/
theorem returnBearing_is_N34W : getNWBearingAngle returnVec = some 34 := by
  sorry

end noncomputable

end BoatNavigation