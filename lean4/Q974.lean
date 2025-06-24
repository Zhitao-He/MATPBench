import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.LinearAlgebra.FiniteDimensional.Basic
open AffineSubspace Affine FiniteDimensional
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def lineThrough (A B : P) : AffineSubspace ℝ P := affineSpan ℝ {A, B}
def Perpendicular (l₁ l₂ : AffineSubspace ℝ P) : Prop :=
  ∃ p₁ p₂ q₁ q₂ : P, p₁ ∈ l₁ ∧ p₂ ∈ l₁ ∧ q₁ ∈ l₂ ∧ q₂ ∈ l₂ ∧
    p₁ ≠ p₂ ∧ q₁ ≠ q₂ ∧ inner ℝ (p₂ -ᵥ p₁) (q₂ -ᵥ q₁) = 0
noncomputable def circumcenter (A B C : P) : P := sorry
noncomputable def reflection (l : AffineSubspace ℝ P) (p : P) : P := sorry
namespace Lean4ProblemFormalization
def IsTangentToSphere (l : AffineSubspace ℝ P) (S : EuclideanGeometry.Sphere P) (p₀ : P) : Prop :=
  p₀ ∈ l ∧ p₀ ∈ S ∧ Perpendicular (lineThrough S.center p₀) l
theorem right_triangle_tangent_circumcircle_problem
    (A B C D E Y X J : P)
    (h_ABC_not_collinear : ¬ Collinear ℝ ({A, B, C} : Set P))
    (h_angle_BAC_is_right : EuclideanGeometry.angle B A C = Real.pi / 2)
    (h_A_ne_D : A ≠ D)
    (h_AD_tangent_circABC : IsTangentToSphere
      (lineThrough A D)
      (EuclideanGeometry.Sphere.mk
        (circumcenter A B C)
        (dist (circumcenter A B C) A)) A)
    (h_D_on_extension_BC : Sbtw ℝ B C D ∨ Sbtw ℝ C B D)
    (h_E_is_reflection_A_over_BC : E =
      reflection (lineThrough B C) A)
    (h_A_ne_Y : A ≠ Y)
    (h_B_ne_E : B ≠ E)
    (h_Y_on_line_BE : Y ∈ lineThrough B E)
    (h_AY_perpendicular_BE : Perpendicular
      (lineThrough A Y)
      (lineThrough B E))
    (h_X_is_midpoint_AY : X = midpoint ℝ A Y)
    (h_B_ne_X : B ≠ X)
    (h_J_on_circABC : J ∈ EuclideanGeometry.Sphere.mk
      (circumcenter A B C)
      (dist (circumcenter A B C) A))
    (h_J_on_line_BX : J ∈ lineThrough B X)
    (h_J_not_B : J ≠ B)
    (h_AJD_not_collinear : ¬ Collinear ℝ ({A, J, D} : Set P))
    : IsTangentToSphere (lineThrough B D)
        (EuclideanGeometry.Sphere.mk
          (circumcenter A J D)
          (dist (circumcenter A J D) A)) D
    := by sorry
end Lean4ProblemFormalization
