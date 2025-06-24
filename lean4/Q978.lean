import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Projection
abbrev P := EuclideanSpace ℝ (Fin 2)
namespace TangentPropertyProblem
def Perpendicular (v w : P) : Prop := sorry
def unorientedAngle (v w : P) : ℝ := sorry
theorem angle_DFC_eq_angle_EFC
  (O P₀ A B C D E F : P) (r : ℝ) (hr : 0 < r)
  (hA : A ∈ EuclideanGeometry.Sphere.mk O r)
  (hB : B ∈ EuclideanGeometry.Sphere.mk O r)
  (hC : C ∈ EuclideanGeometry.Sphere.mk O r)
  (hP_ne_A : P₀ ≠ A)
  (hPA_tangent : Perpendicular (O -ᵥ A) (P₀ -ᵥ A))
  (hP_ne_B : P₀ ≠ B)
  (hPB_tangent : Perpendicular (O -ᵥ B) (P₀ -ᵥ B))
  (hD_ne_E : D ≠ E)
  (hDE_tangent : Perpendicular (O -ᵥ C) (E -ᵥ D))
  (hC_on_DE : Collinear ℝ ({D, C, E} : Set P))
  (hD_on_AP : Collinear ℝ ({A, P₀, D} : Set P))
  (hE_on_BP : Collinear ℝ ({B, P₀, E} : Set P))
  (hA_ne_B : A ≠ B)
  (hF_def : F = EuclideanGeometry.orthogonalProjection (affineSpan ℝ ({A, B} : Set P)) C)
  (hD_ne_F : D ≠ F)
  (hC_ne_F : C ≠ F)
  (hE_ne_F : E ≠ F) :
  unorientedAngle (D -ᵥ F) (C -ᵥ F) = unorientedAngle (E -ᵥ F) (C -ᵥ F) := sorry
end TangentPropertyProblem
