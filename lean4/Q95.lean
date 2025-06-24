import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
noncomputable section
abbrev P := EuclideanSpace ℝ (Fin 2)
open Real EuclideanGeometry
namespace LightReflectionProblem
noncomputable def alpha_val_deg : ℝ := 19.94
noncomputable def alpha_rad : ℝ := (alpha_val_deg / 180) * Real.pi
noncomputable def beta_val_deg : ℝ := alpha_val_deg / 10
noncomputable def beta_rad : ℝ := (beta_val_deg / 180) * Real.pi
lemma beta_rad_eq_alpha_rad_div_10 : beta_rad = alpha_rad / 10 := by
  sorry
def num_bounces : Nat := 71
theorem light_path_description_and_count
  (A B C : P)
  (h_vertices_distinct : A ≠ B ∧ A ≠ C ∧ B ≠ C)
  (h_non_collinear : ¬ Collinear ℝ ({A, B, C} : Set P))
  (h_isosceles : dist A B = dist A C)
  (h_angle_ABC_eq_beta : EuclideanGeometry.angle A B C = beta_rad)
  :
  ∃ (p : Nat → P),
    (p 0 = C) ∧
    (p 1 ∈ interior (segment ℝ A B)) ∧
    (EuclideanGeometry.angle (p 1) (p 0) B = alpha_rad) ∧
    (∀ k : Nat, k < num_bounces →
      let curr_reflection_pt := p k
      let prev_pt := if h : k > 0 then p (k-1) else C
      let next_pt := p (k+1)
      (Even k →
        (curr_reflection_pt ∈ segment ℝ B C) ∧
        (k > 0 → curr_reflection_pt ∈ interior (segment ℝ B C)) ∧
        (next_pt ∈ segment ℝ A B) ∧
        (k + 1 < num_bounces → next_pt ∈ interior (segment ℝ A B)) ∧
        (k > 0 → EuclideanGeometry.angle C curr_reflection_pt prev_pt = EuclideanGeometry.angle B curr_reflection_pt next_pt)
      ) ∧
      (Odd k →
        (curr_reflection_pt ∈ interior (segment ℝ A B)) ∧
        (next_pt ∈ segment ℝ B C) ∧
        (k + 1 < num_bounces → next_pt ∈ interior (segment ℝ B C)) ∧
        (EuclideanGeometry.angle A curr_reflection_pt prev_pt = EuclideanGeometry.angle B curr_reflection_pt next_pt)
      )
    )
  := by sorry
end LightReflectionProblem
end noncomputable section
