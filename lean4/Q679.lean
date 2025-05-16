import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
import Mathlib.Data.Real.Basic

open EuclideanGeometry
open FiniteDimensional (finrank)
open Real (Angle)
open InnerProductSpace (dist)
open scoped Real

-- Let P be a 2-dimensional real inner product space (Euclidean plane)
variable {P : Type*} [NormedAddCommGroup P] [InnerProductSpace ℝ P] [MetricSpace P]
variable [FiniteDimensional ℝ P] (fin2 : finrank ℝ P = 2)

-- Points in the plane
variable (C F D A E : P)

-- Given geometric data (distances)
axiom h_CE : dist C E = 6
axiom h_ED : dist E D = 6
axiom h_FE : dist F E = 5
axiom h_EA : dist E A = 5

-- E lies strictly between C and D
axiom h_sbtw_CED : Sbtw ℝ C E D
-- E lies strictly between F and A
axiom h_sbtw_FEA : Sbtw ℝ F E A

-- Diagonals are perpendicular at E (angle at E between CEF is π/2)
axiom h_perp_diag : angle C E F = Real.Angle.pi_div_two

-- Length of diagonal CD
lemma length_CD : dist C D = 12 := by
  rw [← h_sbtw_CED.dist_add_dist_eq_dist, h_CE, h_ED]
  norm_num

-- Length of diagonal FA
lemma length_FA : dist F A = 10 := by
  rw [← h_sbtw_FEA.dist_add_dist_eq_dist, h_FE, h_EA]
  norm_num

-- Definition of the area of quadrilateral CFDA
def area_CFDA : ℝ :=
  Triangle.area C F D + Triangle.area C D A

-- Formula for area of kite (rhombus) in terms of its diagonals through E
lemma area_CFDA_formula :
    area_CFDA C F D A = (1/2) * (dist C D) * (dist F A) := by
  sorry

-- The area in terms of segment lengths
lemma area_CFDA_segments :
    area_CFDA C F D A = (1/2) * (dist C E + dist E D) * (dist F E + dist E A) := by
  rw [area_CFDA_formula C F D A]
  rw [length_CD C F D A E h_CE h_ED h_sbtw_CED, length_FA C F D A E h_FE h_EA h_sbtw_FEA]

-- Final area is 60
theorem area_CFDA_is_60 : area_CFDA C F D A = 60 := by
  rw [area_CFDA_segments C F D A E h_CE h_ED h_FE h_EA h_sbtw_CED h_sbtw_FEA]
  rw [h_CE, h_ED, h_FE, h_EA]
  norm_num