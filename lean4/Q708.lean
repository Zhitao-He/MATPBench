import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic

/-!
Formalization of the geometry problem:
Given a circle centered at A with points N, P, Q on the circle such that
the central angles ∠NAP = 120° and ∠PAQ = 100°, prove that the inscribed angle ∠QPN = 70°.

All angles are interpreted as unoriented Euclidean angles in radians.
-/

noncomputable def degToRad (d : ℝ) : ℝ := d * (Real.pi / 180)

section GeometryProblem

variable {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [MetricSpace V]
variable {ℝ_plane : Type} [h : EuclideanPlane ℝ ℝ_plane]
variable (A N P Q : ℝ_plane)
variable (r : ℝ)

-- Hypotheses: The points N, P, Q lie on the circle centered at A with radius r > 0, all distinct
variable (hr_pos : 0 < r)
variable (hAN : dist A N = r)
variable (hAP : dist A P = r)
variable (hAQ : dist A Q = r)
variable (hN_ne_P : N ≠ P) (hP_ne_Q : P ≠ Q) (hQ_ne_N : Q ≠ N)

-- Central angle measures (unoriented angle at center), converted from degrees to radians
variable (h_angle_NAP : ∠ N A P = degToRad 120)
variable (h_angle_PAQ : ∠ P A Q = degToRad 100)

-- Goal: The inscribed angle ∠QPN at P equals 70°, in radians
theorem measure_angle_QPN :
    ∠ Q P N = degToRad 70 := by
  sorry

end GeometryProblem