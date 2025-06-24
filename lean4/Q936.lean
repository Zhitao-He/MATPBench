import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.LinearAlgebra.Dimension.Finite
import Mathlib.Analysis.Convex.Side
open Real EuclideanGeometry
open Module
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def degreesToRadians (d : ℝ) : ℝ := d * (π / 180)
noncomputable def angleRSTDegrees : ℝ := 63
noncomputable def angleRSTRadians : ℝ := degreesToRadians angleRSTDegrees
noncomputable def targetAngleDegrees : ℝ := 126
noncomputable def targetAngleRadians : ℝ := degreesToRadians targetAngleDegrees
theorem find_measure_of_arc_ATR
  (A R S T : P)
  (r : ℝ)
  (hr_pos : 0 < r)
  (hR_on_circle : R ∈ EuclideanGeometry.Sphere.mk A r)
  (hS_on_circle : S ∈ EuclideanGeometry.Sphere.mk A r)
  (hT_on_circle : T ∈ EuclideanGeometry.Sphere.mk A r)
  (hR_ne_S : R ≠ S)
  (hS_ne_T : S ≠ T)
  (hR_ne_T : R ≠ T)
  (h_angle_RST : EuclideanGeometry.angle R S T = angleRSTRadians)
  (h_S_not_collinear_RT : ¬ Collinear ℝ ({R, T, S} : Set P))
  (h_A_S_opposite_sides_RT : ¬ (affineSpan ℝ {R, T}).SSameSide A S)
  (inscribed_angle_theorem : ∀ (p₁ p₂ p₃ c : P) (rad : ℝ),
    p₁ ∈ EuclideanGeometry.Sphere.mk c rad →
    p₂ ∈ EuclideanGeometry.Sphere.mk c rad →
    p₃ ∈ EuclideanGeometry.Sphere.mk c rad →
    p₁ ≠ p₂ → p₁ ≠ p₃ → p₂ ≠ p₃ →
    0 < rad →
    ¬ Collinear ℝ ({p₁, p₂, p₃} : Set P) →
    ¬ (affineSpan ℝ {p₁, p₂}).SSameSide c p₃ →
    EuclideanGeometry.angle p₁ c p₂ = 2 * EuclideanGeometry.angle p₁ p₃ p₂
  ) :
  EuclideanGeometry.angle R A T = targetAngleRadians :=
by
  sorry
