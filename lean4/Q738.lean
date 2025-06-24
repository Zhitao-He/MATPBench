import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
noncomputable def degToRad (d : ℝ) : ℝ := d * (Real.pi / 180)
abbrev P := EuclideanSpace ℝ (Fin 2)
namespace ProblemGeo
theorem target_value_of_x
  (C D E F G K : P)
  (r : ℝ) (hr_pos : r > 0)
  (hC_on_circle : dist E C = r)
  (hD_on_circle : dist E D = r)
  (hG_on_circle : dist E G = r)
  (hK_on_circle : dist E K = r)
  (hG_ne_C : G ≠ C)
  (hC_ne_D : C ≠ D)
  (hG_ne_K : G ≠ K)
  (hK_ne_F : K ≠ F)
  (hD_ne_F : D ≠ F)
  (x_deg : ℝ)
  (hKFD : inner ℝ (K -ᵥ F) (D -ᵥ F) = Real.cos (degToRad x_deg))
  (hECG : inner ℝ (E -ᵥ C) (G -ᵥ C) = Real.cos (degToRad 45))
  (hEDC : inner ℝ (E -ᵥ D) (C -ᵥ D) = Real.cos (degToRad 130))
  : x_deg = 20 :=
  sorry
end ProblemGeo
