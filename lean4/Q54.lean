import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Data.Real.Sqrt
abbrev P := EuclideanSpace ℝ (Fin 2)
section
theorem length_of_AC
  (a b c d o : P)
  (h_collinear_abc : ¬ Collinear ℝ ({a, b, c} : Set P))
  (h_o_is_circumcenter : True := trivial) 
  (h_ab_dist : dist a b = 4)
  (h_bc_dist : dist b c = 4)
  (h_d_midpoint : d = midpoint ℝ b c)
  (h_collinear_abd : ¬ Collinear ℝ ({a, b, d} : Set P))
  (h_fold_property : True := trivial) 
  : dist a c = 2 * Real.sqrt 2 := by sorry
end
