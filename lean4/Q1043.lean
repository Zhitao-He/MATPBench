import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry Real
abbrev P := EuclideanSpace ℝ (Fin 2)
structure MySphere where
  center : P
  radius : ℝ
noncomputable def incircle (A B C : P) : MySphere := sorry
noncomputable def Line (A B : P) : AffineSubspace ℝ P := sorry
noncomputable def IsTangent (l : AffineSubspace ℝ P) (S : MySphere) (p : P) : Prop := sorry
noncomputable def orthogonalProjection (l : AffineSubspace ℝ P) (p : P) : P := sorry
noncomputable def circumcircle (A B C : P) : MySphere := sorry
instance : Membership P MySphere := ⟨fun _ _ => sorry⟩
def circlesTangentAtPoint (S₁ S₂ : MySphere) (p : P) : Prop := sorry
theorem inscribed_circle_tangency_problem
  (A B C D E F G : P)
  (h_ABC_noncollinear : ¬ Collinear ℝ {A, B, C})
  (incircle' : MySphere := incircle A B C)
  (hD_on_BC : D ∈ Line B C)
  (hD_on_incircle : D ∈ incircle')
  (hD_tangent : ∃ l : AffineSubspace ℝ P, l = Line B C ∧ IsTangent l incircle' D)
  (hE_is_foot_perp : E = orthogonalProjection (Line B C) A)
  (hF_midpoint_AE : F = midpoint ℝ A E)
  (hG_on_DF : ∃ (h_DF : D ≠ F), G ∈ Line D F ∧ G ≠ D ∧ G ∈ incircle')
  (h_BCG_noncollinear : ¬ Collinear ℝ {B, C, G})
  :
  let circumcircleO := circumcircle B C G
  circlesTangentAtPoint incircle' circumcircleO G := by
  sorry
