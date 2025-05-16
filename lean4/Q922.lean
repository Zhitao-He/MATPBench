import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt

-- Let P be a 2-dimensional Euclidean affine space over ℝ
variable {P : Type*} [NormedAddCommGroup P] [InnerProductSpace ℝ P] [MetricSpace P] 
  [FiniteDimensional ℝ P] [hd : Fact (finrank ℝ P = 2)]

-- Points in the plane
variable (A B C D : P)

-- Given lengths
axiom hab : dist A B = 6
axiom hac : dist A C = 4
axiom hdc : dist D C = 2

-- Right angles at D (CD ⟂ AD and CD ⟂ BD)
axiom h_angle_adc : ∠ A D C = Real.pi / 2
axiom h_angle_bdc : ∠ B D C = Real.pi / 2

-- D lies strictly between A and B
axiom hsbtw_adb : Sbtw ℝ A D B

-- A, B, C are not collinear (nondegenerate triangle)
axiom h_abc_not_collinear : ¬ Collinear ℝ ({A, B, C} : Set P)

-- The perimeter of triangle CBA equals the required value
theorem perimeter_CBA_value :
    dist C B + dist B A + dist A C = 2 * Real.sqrt (13 - 6 * Real.sqrt 3) + 10 := by sorry