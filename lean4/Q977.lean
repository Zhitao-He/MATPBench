import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
abbrev P := EuclideanSpace ℝ (Fin 2)
def Perpendicular (l₁ l₂ : AffineSubspace ℝ P) : Prop := sorry
noncomputable def lineThrough (A B : P) : AffineSubspace ℝ P := affineSpan ℝ {A, B}
def IsTangentAt (p1 p2 t_pt : P) (Ω : EuclideanGeometry.Sphere P) (_ : 0 < Ω.radius) : Prop :=
  p1 ≠ p2 ∧
  t_pt ∈ (Ω : Set P) ∧
  Collinear ℝ ({t_pt, p1, p2} : Set P) ∧
  Perpendicular (lineThrough Ω.center t_pt) (lineThrough p1 p2)
structure ProblemGeometry (Ω : EuclideanGeometry.Sphere P) where
  O : P
  P₀ : P
  C : P
  D : P
  E : P
  A : P
  B : P
  N : P
  M : P
  hO_center : Ω.center = O
  h_radius_pos : 0 < Ω.radius
  hP_external : dist P₀ O > Ω.radius
  hC_on_circle : C ∈ (Ω : Set P)
  hD_on_circle : D ∈ (Ω : Set P)
  hC_ne_D : C ≠ D
  hPC_tangent_at_C : IsTangentAt P₀ C C Ω h_radius_pos
  hPD_tangent_at_D : IsTangentAt P₀ D D Ω h_radius_pos
  hE_on_circle : E ∈ (Ω : Set P)
  hE_ne_C : E ≠ C
  hE_ne_D : E ≠ D
  hAB_tangent_at_E : IsTangentAt A B E Ω h_radius_pos
  hA_sbtw_PC : Sbtw ℝ P₀ A C
  hB_sbtw_PD : Sbtw ℝ P₀ B D
  hE_sbtw_AB : Sbtw ℝ A E B
  hN_on_OE : Collinear ℝ ({N, O, E} : Set P)
  hN_on_CD : Collinear ℝ ({N, C, D} : Set P)
  hOE_CD_intersect_unique : ∀ (X : P), Collinear ℝ ({X, O, E} : Set P) ∧ Collinear ℝ ({X, C, D} : Set P) → X = N
  hM_on_PN : Collinear ℝ ({M, P₀, N} : Set P)
  hM_on_AB : Collinear ℝ ({M, A, B} : Set P)
  hP_ne_N : P₀ ≠ N
  hPN_AB_intersect_unique : ∀ (X : P), Collinear ℝ ({X, P₀, N} : Set P) ∧ Collinear ℝ ({X, A, B} : Set P) → X = M
theorem tangent_lines_midpoint_theorem
  (Ω : EuclideanGeometry.Sphere P)
  (geom : ProblemGeometry Ω) :
  dist geom.M geom.A = dist geom.M geom.B := by
  sorry
