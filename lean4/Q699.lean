import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

namespace EuclideanGeometryProblem

open Real
open EuclideanGeometry

-- We work in the Euclidean plane ℝ²
def P := EuclideanSpace ℝ (Fin 2)

-- Define points so that AC is horizontal of length 10, and BC is vertical and perpendicular to AC at C.
def C : P := ![0, 0]
def A : P := ![10, 0]
-- B的定义需要接受参数x
def B (x : ℝ) : P := ![0, x]

-- Given lengths
def ab_len : ℝ := 20
def ac_len : ℝ := 10

-- Variables: side BC length x > 0, and y_degrees is the measure of angle ABC in degrees.
variable (x : ℝ)
variable (y_degrees : ℝ)

-- Hypotheses:
axiom h_ac : dist A C = ac_len
axiom h_ab : dist A (B x) = ab_len
axiom h_bc : dist (B x) C = x
axiom h_x_pos : x > 0

-- BC ⟂ AC: i.e. angle at C is π/2 radians (right angle)
axiom h_right_angle_ACB : (∡ A C (B x)) = π / 2

-- Angle at B is y degrees
axiom h_angle_ABC_is_y_degrees : y_degrees = (∡ A (B x) C).toDegrees

-- Main statement: value of y is 30
theorem value_of_y_is_30 : y_degrees = 30 := by sorry

end EuclideanGeometryProblem