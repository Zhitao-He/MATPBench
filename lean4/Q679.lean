import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
noncomputable abbrev PPoint := EuclideanSpace ℝ (Fin 2)
open EuclideanGeometry
theorem find_area_of_rhombus_CFDA
  (C D E F A : PPoint)
  (h_E_midpoint_CD : E = midpoint ℝ C D)
  (h_E_midpoint_FA : E = midpoint ℝ F A)
  (h_diagonals_perpendicular : inner ℝ (D -ᵥ E) (A -ᵥ E) = 0)
  (h_dist_CE : dist C E = 6)
  (h_dist_FE : dist F E = 5)
  : (dist C D * dist F A) / 2 = 60 :=
by
  sorry
