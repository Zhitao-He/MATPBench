import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.PerpBisector
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
noncomputable def circumcenter (A B C : Point) : Point := sorry
noncomputable def perpBisector (A B : Point) : Set Point := sorry
noncomputable def Concyclic (s : Set Point) : Prop := sorry 
theorem concyclic_AFOE
  (A B C D E F O : Point)
  (h_ABC_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set Point))
  (hO : O = circumcenter A B C)
  (hD_on_BC : D ∈ segment ℝ B C)
  (hD_ne_B : D ≠ B)
  (hD_ne_C : D ≠ C)
  (hF_on_AB : F ∈ line[ℝ, A, B])
  (hF_on_pb_BD : F ∈ perpBisector B D)
  (hE_on_AC : E ∈ line[ℝ, A, C])
  (hE_on_pb_CD : E ∈ perpBisector C D)
  : Concyclic ({A, F, O, E} : Set Point) := by
  sorry
