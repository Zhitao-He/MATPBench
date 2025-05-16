import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

open Real
open scoped EuclideanGeometry

-- Given a real inner product space V of dimension 2 and a Euclidean plane P
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [Fact (finrank ℝ V = 2)]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

/--
CircleProblemSetupExplicitRadius:
Formalizes the given configuration:
- O is the center of a circle of radius r,
- AC and BD are diameters,
- Angle AOD = 54 degrees (in radians).
-/
structure CircleProblemSetupExplicitRadius (O A B C D : P) (r : ℝ) where
  hr_pos : 0 < r
  hA_on_circle : dist A O = r
  hC_on_circle : dist C O = r
  hO_mid_AC : O = midpoint ℝ A C
  hB_on_circle : dist B O = r
  hD_on_circle : dist D O = r
  hO_mid_BD : O = midpoint ℝ B D
  h_angle_AOD : ∠ A O D = (54 / 180) * π

/--
In the circle with center O and diameters AC and BD, if the angle AOD measures 54 degrees,
then angle AOB measures 126 degrees.
-/
theorem angle_AOB_is_126_explicit_radius
  {O A B C D : P} {r : ℝ}
  (setup : CircleProblemSetupExplicitRadius O A B C D r) :
  ∠ A O B = (126 / 180) * π :=
by
  sorry