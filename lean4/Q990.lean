import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
open EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
namespace ProblemDefinition
structure QuadrilateralAndCirclesProblem
  (A B C D E F G O₁ O₂ : P) where
  h_ABD_not_collinear : ¬ Collinear ℝ ({A, B, D} : Set P)
  h_ACD_not_collinear : ¬ Collinear ℝ ({A, C, D} : Set P)
  h_O₁_is_circumcenter : True
  h_O₂_is_circumcenter : True
  hF_on_AC : F ≠ A ∧ F ∈ Sphere.mk O₁ (dist O₁ A) ∧ F ∈ line[ℝ, A, C]
  hE_on_AB : E ≠ A ∧ E ∈ Sphere.mk O₂ (dist O₂ A) ∧ E ∈ line[ℝ, A, B]
  h_AB_eq_AC : dist A B = dist A C
  hG_is_intersection : G ∈ line[ℝ, B, F] ∧ G ∈ line[ℝ, C, E]
  h_BF_distinct : B ≠ F
  h_CE_distinct : C ≠ E
  h_CG_distinct : C ≠ G
  h_BD_distinct : B ≠ D
  h_CD_distinct : C ≠ D
theorem target_ratio_equality
  (A B C D E F G O₁ O₂ : P)
  (geom : QuadrilateralAndCirclesProblem A B C D E F G O₁ O₂) :
    dist B G / dist C G = dist B D / dist C D :=
by
  sorry
end ProblemDefinition
