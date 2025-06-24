import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.LinearAlgebra.AffineSpace.Independent
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.Convex.Side
abbrev P := EuclideanSpace ℝ (Fin 2)
open scoped EuclideanGeometry
open scoped Real
open Real
def IsTangentLine (l : AffineSubspace ℝ P) (O : P) (r : ℝ) (T : P) : Prop :=
  dist O T = r ∧ T ∈ l ∧ ∃ v : P, v ≠ 0 ∧ v ∈ l.direction ∧ inner ℝ v (T - O) = 0
def IsOnSemicircleArc (p A B O : P) (r : ℝ)
    (_ : O = midpoint ℝ A B) (_ : A ≠ B) : Prop :=
  (dist p O = r) ∧ (p ≠ A) ∧ (p ≠ B) ∧
  (∃ (M : P), inner ℝ (M - O) (B - A) = 0 ∧ (dist M O = r) ∧ (M ≠ O) ∧
    ¬ Collinear ℝ ({A, B, M})) ∧
  (∃ (M : P), inner ℝ (M - O) (B - A) = 0 ∧ (dist M O = r) ∧ (M ≠ O) ∧
    ¬ Collinear ℝ ({A, B, M}) ∧
    (affineSpan ℝ {A, B}).WSameSide p M)
theorem prove_angle_EFD_eq_angle_FOB
  (A B C D E F O : P)
  (h_O_midpoint_AB : O = midpoint ℝ A B)
  (h_A_ne_B : A ≠ B)
  (h_CA_perp_AB : inner ℝ (C - A) (B - A) = 0)
  (h_DB_perp_AB : inner ℝ (D - B) (A - B) = 0)
  (h_E_ne_C : E ≠ C)
  (h_E_ne_D : E ≠ D)
  (h_EC_tangent_semicircle :
    ∃ (T_EC : P), IsTangentLine (affineSpan ℝ {E, C}) O (dist A O) T_EC ∧
                  IsOnSemicircleArc T_EC A B O (dist A O) h_O_midpoint_AB h_A_ne_B)
  (h_ED_tangent_semicircle :
    ∃ (T_ED : P), IsTangentLine (affineSpan ℝ {E, D}) O (dist A O) T_ED ∧
                  IsOnSemicircleArc T_ED A B O (dist A O) h_O_midpoint_AB h_A_ne_B)
  (h_C_ne_D : C ≠ D)
  (h_F_is_proj_O_on_CD : F = EuclideanGeometry.orthogonalProjection (affineSpan ℝ {C, D}) O)
  (h_E_ne_F_angle : E ≠ F)
  (h_F_ne_D_angle : F ≠ D)
  (h_F_ne_O_angle : F ≠ O) :
  ∠ E F D = ∠ F O B := by
  sorry
