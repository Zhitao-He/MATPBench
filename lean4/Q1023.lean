import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
noncomputable def circumcenter (A B C : Point) : Point := sorry
noncomputable def orthocenter (A B C : Point) : Point := sorry
theorem DE_eq_DF
  (A B C O H D E F : Point)
  (h_nondeg : ¬ Collinear ℝ ({A, B, C} : Set Point))
  (h_O_circum : O = circumcenter A B C)
  (h_H_orthocenter : H = orthocenter A B C)
  (h_D_mid : D = midpoint ℝ B C)
  (h_D_ne_H : D ≠ H)
  (h_E_perp : inner ℝ (E -ᵥ H) (H -ᵥ D) = 0)
  (h_F_perp : inner ℝ (F -ᵥ H) (H -ᵥ D) = 0)
  (h_E_on_AB : Collinear ℝ ({A, B, E} : Set Point))
  (h_F_on_AC : Collinear ℝ ({A, C, F} : Set Point))
  : dist D E = dist D F := by sorry
