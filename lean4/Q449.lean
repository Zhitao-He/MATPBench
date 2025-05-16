import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Pi.Irrational

open EuclideanGeometry

-- Let P be a 3-dimensional real affine space with vector space V
variable {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type} [MetricSpace P] [NormedAddTorsor V P]
variable [Fact (finrank ℝ V = 3)]

/-- The volume of a right prism with triangular base `ABC` and height vector `hv`. -/
noncomputable def prismVolume (A B C : P) (hv : V) : ℝ :=
  (1 / (2 : ℝ)) * dist A B * dist B C * ‖hv‖

/--
Let A, B, C be three points in 3D Euclidean space,
`hv` a vector perpendicular to the plane of A, B, C,
and the prism is defined as follows:
- D = A +ᵥ hv, E = B +ᵥ hv, F = C +ᵥ hv.
Assume:
  (1) A, B, C are not collinear,
  (2) hv is orthogonal to (B -ᵥ A) and (C -ᵥ A),
  (3) ∠ABC = π/2,
  (4) ∠EAB = π/3 (where E = B +ᵥ hv),
  (5) ∠CAB = π/3,
  (6) dist A E = 2.
Then the prism volume = m/n where m, n are coprime positive integers, m + n = 5.
-/
theorem rightTriangularPrismVolume_sum_m_n_is_5 :
  ∀ (A B C : P) (hv : V),
    ¬Collinear A B C →
    hv ⟂ (B -ᵥ A) →
    hv ⟂ (C -ᵥ A) →
    ∠ A B C = Real.pi / 2 →
    ∠ (B +ᵥ hv) A B = Real.pi / 3 →
    ∠ C A B = Real.pi / 3 →
    dist A (B +ᵥ hv) = 2 →
    ∃ (m n : ℕ),
      0 < m ∧ 0 < n ∧ Nat.Coprime m n ∧
      prismVolume A B C hv = (m : ℝ) / (n : ℝ) ∧
      m + n = 5 := by
  sorry