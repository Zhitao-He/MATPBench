import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Data.Real.Basic
import Mathlib.Data.Nat.GCD

open EuclideanGeometry

/-!
## Formalization of the Geometry Problem

Given:
- Circle A with radius 10.
- Equilateral triangle T inscribed in circle A, vertices v₁, v₂, v₃.
- Circle B (radius 3) internally tangent to A at v₁.
- Circles C and D (radii 2) internally tangent to A at v₂, v₃.
- Circles B, C, D all externally tangent to a circle E (radius m/n, with coprime positive m, n).
Find: m + n = 32.
-/

-- Circle radii
def rA : ℝ := 10
def rB : ℝ := 3
def rC : ℝ := 2
def rD : ℝ := 2

/--
A circle with center `c2` and radius `r2` is internally tangent to a circle with center `c1` and radius `r1` at point `p`.
- `r1 > r2 > 0`, `dist p c1 = r1`, `dist p c2 = r2`, and `dist c1 c2 = r1 - r2`.
-/
def IsInternallyTangentAt (c1 : EuclideanPlane) (r1 : ℝ) (c2 : EuclideanPlane) (r2 : ℝ) (p : EuclideanPlane) : Prop :=
  r1 > r2 ∧ r2 > 0 ∧
  dist p c1 = r1 ∧
  dist p c2 = r2 ∧
  dist c1 c2 = r1 - r2

/-- Circles (c1, r1) and (c2, r2), both with positive radii, are externally tangent iff their centers are exactly r1 + r2 apart. -/
def AreExternallyTangent (c1 : EuclideanPlane) (r1 : ℝ) (c2 : EuclideanPlane) (r2 : ℝ) : Prop :=
  r1 > 0 ∧ r2 > 0 ∧ dist c1 c2 = r1 + r2

/--
Formal statement of the geometry problem as a theorem in Lean 4.

There exist positive coprime integers m, n, with m + n = 32, and suitable geometric data (centers/vertices)
such that:
- T is an equilateral triangle inscribed in circle A,
- circle B (radius 3) is internally tangent to A at v₁,
- circles C, D (radii 2) internally tangent to A at v₂, v₃,
- B, C, D each are externally tangent to circle E (radius m/n).
-/
theorem find_m_plus_n_is_32 :
  ∃ (m n : ℕ),
    0 < m ∧ 0 < n ∧ Nat.gcd m n = 1 ∧
    (∃ (centerA centerB centerC centerD centerE : EuclideanPlane)
       (v₁ v₂ v₃ : EuclideanPlane),
      let rE : ℝ := (m : ℝ) / (n : ℝ)
      -- 1. Triangle T (v₁ v₂ v₃) is equilateral, nondegenerate
      ∧ IsEquilateral v₁ v₂ v₃
      ∧ dist v₁ v₂ > 0
      -- 2. Triangle T inscribed in circle A
      ∧ dist v₁ centerA = rA
      ∧ dist v₂ centerA = rA
      ∧ dist v₃ centerA = rA
      -- 3/4/5. Circles B,C,D internally tangent to A at the vertices
      ∧ IsInternallyTangentAt centerA rA centerB rB v₁
      ∧ IsInternallyTangentAt centerA rA centerC rC v₂
      ∧ IsInternallyTangentAt centerA rA centerD rD v₃
      -- 6. Circles B,C,D externally tangent to E
      ∧ AreExternallyTangent centerB rB centerE rE
      ∧ AreExternallyTangent centerC rC centerE rE
      ∧ AreExternallyTangent centerD rD centerE rE
      -- 7. m + n = 32
      ∧ m + n = 32
    )
:= by sorry