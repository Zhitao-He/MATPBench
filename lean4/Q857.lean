import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real EuclideanGeometry
namespace EuclideanGeometryProblem
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
lemma similar_triangles_AA_side_ratios
    {A₁ D₁ E₁ C₂ B₂ : P}
    (h_ncoll₁ : ¬ Collinear ℝ ({A₁, D₁, E₁} : Set P))
    (h_ncoll₂ : ¬ Collinear ℝ ({C₂, B₂, E₁} : Set P))
    (h_angle₁ : angle A₁ D₁ E₁ = angle C₂ B₂ E₁)
    (h_angle₂ : angle D₁ E₁ A₁ = angle B₂ E₁ C₂)
    (h_BC_pos : dist B₂ C₂ > 0)
    (h_BE_pos : dist E₁ B₂ > 0)
    (h_EC_pos : dist E₁ C₂ > 0)
    : (dist A₁ D₁ / dist B₂ C₂ = dist D₁ E₁ / dist E₁ B₂) ∧
      (dist D₁ E₁ / dist E₁ B₂ = dist E₁ A₁ / dist C₂ E₁) :=
  sorry
theorem value_of_x_is_2
  (A B C D E : P)
  (x : ℝ)
  (h_AD : dist A D = 10)
  (h_BC : dist B C = 15)
  (h_BE : dist B E = 6)
  (h_EC : dist E C = 12)
  (h_ED : dist E D = 3 * x - 2)
  (h_angle : ∠ A D E = ∠ C B E)
  (h_sbtw_AEC : Sbtw ℝ A E C)
  (h_sbtw_DEB : Sbtw ℝ D E B)
  (h_ncoll_ADE : ¬ Collinear ℝ ({A, D, E} : Set P))
  (h_ncoll_CBE : ¬ Collinear ℝ ({C, B, E} : Set P))
  : x = 2 := by
  let h_vert : ∠ D E A = ∠ B E C := sorry
  have h_CB_pos : 0 < dist B C := by rw [h_BC]; norm_num
  have h_BE_pos : 0 < dist E B := by rw [dist_comm, h_BE]; norm_num
  have h_EC_pos : 0 < dist E C := by rw [h_EC]; norm_num
  have h_ratios := similar_triangles_AA_side_ratios
    h_ncoll_ADE h_ncoll_CBE h_angle h_vert h_CB_pos h_BE_pos h_EC_pos
  have h_eq : dist A D / dist B C = dist D E / dist E B := h_ratios.left
  sorry
end EuclideanGeometryProblem
