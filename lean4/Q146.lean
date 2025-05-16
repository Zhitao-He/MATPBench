import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Oriented.Affine
import Mathlib.Data.Real.Pi

open EuclideanGeometry
open Real

variable {P : Type*} [NormedAddCommGroup P] [InnerProductSpace ℝ P]
variable [Fact (FiniteDimensional.finrank ℝ P = 2)]

namespace CircleArcProblem

variable {O A B C D E F : P}
variable (hA_on_circle : dist A O = dist B O)
variable (hB_on_circle : dist B O = dist C O)
variable (hC_on_circle : dist C O = dist D O)
variable (hD_on_circle : dist D O = dist E O)
variable (hE_on_circle : dist E O = dist F O)
variable (hF_on_circle : dist F O = dist A O)

variable (h_diam_EC : midpoint ℝ E C = O)
variable (h_diam_AB : midpoint ℝ A B = O)

variable (h_oangle_BOD_eq_DOE : oangle B O D = oangle D O E)
variable (h_oangle_DOE_eq_EOF : oangle D O E = oangle E O F)
variable (h_oangle_EOF_eq_FOA : oangle E O F = oangle F O A)

theorem measure_arc_AE_is_90_degrees : angle A O E = π / 2 := by
  sorry

end CircleArcProblem