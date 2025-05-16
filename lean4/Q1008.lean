import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic

/-!
# Geometry Problem: Triangle, Circle Tangent, and Perpendicularity

In triangle ABC, let D be the midpoint of BC. A circle with center O passes through A and C,
and is tangent to DA at A. Let line BA meet the circle again at E (E ≠ A), and line CE meet DA at F. Prove that FO ⟂ BC.
-/

section GeometryProblem

open EuclideanGeometry

-- We model the Euclidean plane as P, a torsor over the 2D Euclidean space.
variable {P : Type*} [EuclideanSpace ℝ (Fin 2)] [NormedAddTorsor (EuclideanSpace ℝ (Fin 2)) P]

-- Declare all points involved.
variable (A B C D E F O : P)
variable (r : ℝ)

-- Hypotheses correspond to the problem description:

-- A, B, C are not collinear: triangle.
variable (h_non_collinear_ABC : ¬ Collinear ℝ ({A, B, C} : Set P))

-- D is the midpoint of BC.
variable (hD_midpoint_BC : D = midpoint ℝ B C)

-- The circle (center O, radius r) passes through A and C.
variable (hA_on_circle : A ∈ sphere O r)
variable (hC_on_circle : C ∈ sphere O r)
-- r > 0
variable (hr_pos : 0 < r)

-- D ≠ A (for DA to be a line)
variable (hD_ne_A : D ≠ A)

-- Circle is tangent to line DA at A
-- OA ⟂ DA
variable (h_tangent_DA_at_A : (O -ᵥ A) ⟂ (D -ᵥ A))

-- E is the second intersection of BA with circle (other than A).
variable (hE_on_BA : E ∈ line[ℝ, B, A])
variable (hE_on_circle : E ∈ sphere O r)
variable (hE_ne_A : E ≠ A)

-- F is intersection of DA and CE.
variable (hF_on_DA : F ∈ line[ℝ, D, A])
variable (hF_on_CE : F ∈ line[ℝ, C, E])

-- The goal: FO ⟂ BC
theorem geometry_FO_perp_BC : (F -ᵥ O) ⟂ (C -ᵥ B) := by
  sorry

end GeometryProblem