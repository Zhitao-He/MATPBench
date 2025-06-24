import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
noncomputable def Concyclic (s : Set Point) : Prop := sorry
theorem cKFE_concyclic
  (A B C D E F G K : Point)
  (Ω : EuclideanGeometry.Sphere Point)
  (h_A_ne_B : A ≠ B) (h_A_ne_C : A ≠ C) (h_A_ne_D : A ≠ D)
  (h_B_ne_C : B ≠ C) (h_B_ne_D : B ≠ D) (h_C_ne_D : C ≠ D)
  (h_on_circle : ∀ p, p ∈ ({A, B, C, D} : Set Point) → p ∈ Ω)
  (h_E : E ∈ line[ℝ, A, B] ∧ E ∈ line[ℝ, D, C] ∧ line[ℝ, A, B] ≠ line[ℝ, D, C])
  (h_F : F ∈ line[ℝ, A, D] ∧ F ∈ line[ℝ, B, C] ∧ line[ℝ, A, D] ≠ line[ℝ, B, C])
  (h_G : G = midpoint ℝ E F)
  (h_K : K ∈ Ω ∧ K ∈ line[ℝ, A, G] ∧ K ≠ A)
  : Concyclic ({C, K, F, E} : Set Point) := by
  sorry
