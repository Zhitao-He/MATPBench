import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic

-- Helper: convert degrees to radians for Lean's trigonometric functions.
noncomputable def degToRad (d : ℝ) : ℝ := d * (Real.pi / 180)

section GeometryProblem

-- Points in the Euclidean plane
variable (A B C D E : EuclideanSpace ℝ (Fin 2))

-- Given angle measures (angles at the corresponding vertices)
variable (hBDE : ∠ B D E = degToRad 109)
variable (hCBE : ∠ C B E = degToRad 24)
variable (hEAC : ∠ E A C = degToRad 95)
variable (hECB : ∠ E C B = degToRad 33)

-- Non-collinearity assumptions for angle well-definedness
variable (hNoncolBDE : ¬ Collinear ℝ B D E)
variable (hNoncolCBE : ¬ Collinear ℝ C B E)
variable (hNoncolEAC : ¬ Collinear ℝ E A C)
variable (hNoncolECB : ¬ Collinear ℝ E C B)
variable (hNoncolEBD : ¬ Collinear ℝ E B D) -- for the angle to be solved

-- The goal: measure of ∠EBD is 14°
theorem measure_of_angle_EBD : ∠ E B D = degToRad 14 := by
  sorry

end GeometryProblem