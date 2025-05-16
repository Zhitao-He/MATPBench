import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
import Mathlib.Data.Real.Sqrt

/-!
# Geometry Problem Formalization (Lean 4)

Given:
- Points A, M, P, N, D, B, C in the plane
- AM = MP
- AP = √13
- PD = 3√13
- PN = ND
- ∠MAB = ∠NDC
- Perimeter of △BPA is 12
- CP is perpendicular to NP
Find: Perimeter of △CPD (given as 36)
-/

variable (Plane : Type*) [EuclideanPlane Plane]

-- Declare points
variable (A M P N D B C : Plane)

-- 1. M is midpoint of AP
axiom hM_midpoint : M = midpoint ℝ A P

-- 2. N is midpoint of PD
axiom hN_midpoint : N = midpoint ℝ P D

-- 3. AP = √13
axiom hAP_length : dist A P = Real.sqrt 13

-- 4. PD = 3√13
axiom hPD_length : dist P D = 3 * Real.sqrt 13

-- 5. Points A, P, D are collinear with P between A and D
axiom h_collinear : Collinear ℝ ![A, P, D]

-- 6. ∠MAB = ∠NDC
axiom h_angle_eq : ∠ M A B = ∠ N D C

-- 7. Perimeter of △BPA is 12
axiom h_perimeter : (Triangle.mk B P A).perimeter = 12

-- 8. CP is perpendicular to NP
axiom h_perpendicular : ∠ C P N = ∠_right

-- Goal: Perimeter of △CPD is 36
theorem perimeter_CPD : (Triangle.mk C P D).perimeter = 36 := by
  sorry