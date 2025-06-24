import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
abbrev P := EuclideanSpace ℝ (Fin 2)
section
theorem central_angle_of_inscribed_square_is_90_degrees
  (A B D C K : P)
  (r : ℝ)
  (h_r_pos : r > 0)
  (h_square_ABDC : sorry) 
  (h_A_on_circle : dist A K = r)
  (h_B_on_circle : dist B K = r)
  (h_D_on_circle : dist D K = r)
  (h_C_on_circle : dist C K = r)
  : EuclideanGeometry.angle A K B = Real.pi / 2 := by
  sorry
end
