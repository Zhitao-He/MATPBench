import Mathlib.Data.Real.Basic

namespace PyramidVolumeProblem

/-!
This section formalizes the core definitions of a geometry problem:

- The outer square S has side 40.
- The inner square S' has side 15, is concentric with S, and its sides are parallel to those of S.
- From each midpoint of a side of S, segments are drawn to the two nearest vertices of S'.
- The resulting four-pointed "star" is cut out and folded into a pyramid whose base is S'.

We formalize the geometric quantities needed to compute the volume of this pyramid.
-/

/-- Side length of the outer square S. -/
def sSide : ℝ := 40

/-- Side length of the inner square S', the base of the pyramid. -/
def sPrimeSide : ℝ := 15

/-- Volume stated by the problem as expected (for verification). -/
def targetVolume : ℝ := 750

/-- Half side of the outer square S. -/
def sHalf : ℝ := sSide / 2    -- = 20

/-- Half side of the inner square S'. -/
def sPrimeHalf : ℝ := sPrimeSide / 2   -- = 7.5

/--
The slant height (face height in the unfolded figure): distance from midpoint of S
to the corresponding side of S'.
-/
def slantHeight : ℝ := sHalf - sPrimeHalf   -- = 12.5

/--
The height of the pyramid (from base to apex).
Right triangle: 
- one leg = half base side (7.5),
- hypotenuse = slant height,
- other leg = true height.
By Pythagoras: height^2 = slantHeight^2 - sPrimeHalf^2
-/
def pyramidHeight : ℝ := Real.sqrt (slantHeight ^ 2 - sPrimeHalf ^ 2)  -- = 10

/-- Area of inner square (the base). -/
def baseArea : ℝ := sPrimeSide ^ 2   -- = 225

/--
Volume of the pyramid: (1/3) * base_area * height
-/
def pyramidVolume : ℝ := (1 / 3 : ℝ) * baseArea * pyramidHeight   -- = 750

/--
Theorem: the calculated volume matches the problem's given value.
-/
theorem volume_matches_target : pyramidVolume = targetVolume := by
  sorry

end PyramidVolumeProblem