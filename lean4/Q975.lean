import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.LinearAlgebra.FiniteDimensional.Basic
open EuclideanGeometry AffineSubspace Affine FiniteDimensional
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def lineThrough (A B : P) : AffineSubspace ℝ P := affineSpan ℝ {A, B}
noncomputable def reflection (l : AffineSubspace ℝ P) (p : P) : P := sorry
def Perpendicular (l₁ l₂ : AffineSubspace ℝ P) : Prop :=
  ∃ p₁ p₂ q₁ q₂ : P, p₁ ∈ l₁ ∧ p₂ ∈ l₁ ∧ q₁ ∈ l₂ ∧ q₂ ∈ l₂ ∧
    p₁ ≠ p₂ ∧ q₁ ≠ q₂ ∧ inner ℝ (p₂ -ᵥ p₁) (q₂ -ᵥ q₁) = 0
namespace EuclideanGeometryProblem
theorem pq_perpendicular_to_ac
  (A : P) (B : P) (C : P) (D : P) (O : P) (A' : P) (B' : P) (X : P) (Q : P)
  (ω : Sphere P)
  (hO : ω.center = O)
  (hBD : True) 
  (h_rad : ω.radius > 0)
  (hA : A ∈ ω)
  (hC : C ∈ ω)
  (hA_ne_B : A ≠ B)
  (hA_ne_C : A ≠ C)
  (hA_ne_D : A ≠ D)
  (hB_ne_C : B ≠ C)
  (hC_ne_D : C ≠ D)
  (hA' : A' = reflection (lineThrough B D) A)
  (hB' : B' = reflection (lineThrough A C) B)
  (hD_ne_B' : D ≠ B')
  (hQ_on_AC : Q ∈ (lineThrough A C : Set P))
  (hQ_on_DB' : Q ∈ lineThrough D B')
  (hAC_not_parallel_DB' : True) 
  (hC_ne_A' : C ≠ A')
  (hP_on_DB : X ∈ (lineThrough D B : Set P))
  (hP_on_CA' : X ∈ (lineThrough C A' : Set P))
  (hDB_not_parallel_CA' : True) 
  (hP_ne_Q : X ≠ Q)
  : Perpendicular (lineThrough X Q) (lineThrough A C) := by
  sorry
end EuclideanGeometryProblem
