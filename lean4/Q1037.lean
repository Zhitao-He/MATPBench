import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Analysis.InnerProductSpace.PiL2
open EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def triangle_mk₃ (A B C : P) : Set P := {A, B, C}
noncomputable def circumcenter (A B C : P) : P := sorry
noncomputable def circumradius (A B C : P) : ℝ := sorry
namespace ProblemFormalization
def is_incenter_of (I P1 P2 P3 : P) : Prop :=
  ¬ Collinear ℝ ({P1, P2, P3} : Set P) ∧
  let line12 := affineSpan ℝ {P1, P2}
  let line23 := affineSpan ℝ {P2, P3}
  let line31 := affineSpan ℝ {P3, P1}
  (dist I (orthogonalProjection line12 I) = dist I (orthogonalProjection line23 I)) ∧
  (dist I (orthogonalProjection line23 I) = dist I (orthogonalProjection line31 I))
theorem inscribed_circles_common_incenter
  (A B C : P)
  (P_center : P)
  (O_center : P)
  (E F : P)
  (D : P)
  (K : P)
  (h_ABC_noncoll : ¬ Collinear ℝ ({A, B, C} : Set P))
  (hP_is_circumcenter : P_center = circumcenter A B C)
  (rP_val : ℝ)
  (hrP_is_circumradius : rP_val = circumradius A B C)
  (circumcircle_P_obj : EuclideanGeometry.Sphere P)
  (h_circumcircle_P_center : circumcircle_P_obj.center = P_center)
  (h_circumcircle_P_radius : circumcircle_P_obj.radius = rP_val)
  (rO_val : ℝ)
  (circleO_obj : EuclideanGeometry.Sphere P)
  (h_circleO_center : circleO_obj.center = O_center)
  (h_circleO_radius : circleO_obj.radius = rO_val)
  (hA_on_circleO : A ∈ circleO_obj)
  (hB_on_circleO : B ∈ circleO_obj)
  (hE_on_line_AC : E ∈ affineSpan ℝ {A, C})
  (hE_on_circleO : E ∈ circleO_obj)
  (hE_ne_A : E ≠ A) (hE_ne_C : E ≠ C)
  (hF_on_line_BC : F ∈ affineSpan ℝ {B, C})
  (hF_on_circleO : F ∈ circleO_obj)
  (hF_ne_B : F ≠ B) (hF_ne_C : F ≠ C)
  (hA_ne_F : A ≠ F)
  (hB_ne_E : B ≠ E)
  (hD_on_AF : D ∈ affineSpan ℝ {A, F})
  (hD_on_BE : D ∈ affineSpan ℝ {B, E})
  (hO_center_ne_D : O_center ≠ D)
  (hK_on_line_OD : K ∈ affineSpan ℝ {O_center, D})
  (hK_on_circumcircle_P : K ∈ circumcircle_P_obj)
  (h_KBE_noncoll : ¬ Collinear ℝ ({K, B, E} : Set P))
  (h_KAF_noncoll : ¬ Collinear ℝ ({K, A, F} : Set P)) :
  ∃ I : P, (is_incenter_of I K B E) ∧ (is_incenter_of I K A F) := by
  sorry
end ProblemFormalization
