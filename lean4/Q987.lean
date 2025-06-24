import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open EuclideanGeometry Real
abbrev P := EuclideanSpace ℝ (Fin 2)
variable (A B C D E F G I O : P)
variable (rI rO : ℝ)
variable (sI sO : EuclideanGeometry.Sphere P)
axiom hABC_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set P)
axiom hI_is_incenter : True
axiom hrI_is_inradius : True
axiom hsI_def : sI = EuclideanGeometry.Sphere.mk I rI
axiom hrI_pos : rI > 0
axiom hD_on_segment_BC : D ∈ openSegment ℝ B C
axiom hD_on_sI : D ∈ sI
axiom hB_ne_C : B ≠ C
axiom hD_is_proj : True
axiom hE_is_proj : True
axiom hF_is_midpoint : F = midpoint ℝ A E
axiom hD_ne_F : D ≠ F
axiom hG_on_line_DF : G ∈ affineSpan ℝ ({D, F} : Set P)
axiom hG_on_sI : G ∈ sI
axiom hG_ne_D : G ≠ D
axiom hBCG_noncollinear : ¬ Collinear ℝ ({B, C, G} : Set P)
axiom hO_is_circumcenter : True
axiom hrO_is_circumradius : True
axiom hsO_def : sO = EuclideanGeometry.Sphere.mk O rO
axiom hrO_pos : rO > 0
axiom hG_on_sO : G ∈ sO
def SpheresAreTangentAt (S₁ S₂ : EuclideanGeometry.Sphere P) (p : P) : Prop :=
  p ∈ S₁ ∧ p ∈ S₂ ∧ Collinear ℝ ({S₁.center, S₂.center, p} : Set P)
theorem circles_tangent_at_G
  (A B C D E F G I O : P)
  (rI rO : ℝ)
  (sI sO : EuclideanGeometry.Sphere P)
  (hABC_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set P))
  (hI_is_incenter : True)
  (hrI_is_inradius : True)
  (hsI_def : sI = EuclideanGeometry.Sphere.mk I rI)
  (hrI_pos : rI > 0)
  (hD_on_segment_BC : D ∈ openSegment ℝ B C)
  (hD_on_sI : D ∈ sI)
  (hB_ne_C : B ≠ C)
  (hD_is_proj : True)
  (hE_is_proj : True)
  (hF_is_midpoint : F = midpoint ℝ A E)
  (hD_ne_F : D ≠ F)
  (hG_on_line_DF : G ∈ affineSpan ℝ ({D, F} : Set P))
  (hG_on_sI : G ∈ sI)
  (hG_ne_D : G ≠ D)
  (hBCG_noncollinear : ¬ Collinear ℝ ({B, C, G} : Set P))
  (hO_is_circumcenter : True)
  (hrO_is_circumradius : True)
  (hsO_def : sO = EuclideanGeometry.Sphere.mk O rO)
  (hrO_pos : rO > 0)
  (hG_on_sO : G ∈ sO) :
  SpheresAreTangentAt sI sO G := by
  sorry
