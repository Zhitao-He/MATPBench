import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

-- 平面上的点类型
abbrev P := EuclideanSpace ℝ (Fin 2)

-- 定义三点的角的度数值，顶点为第二个点
def measureOfAngleInDegrees (A B C : P) : ℝ :=
  Real.Angle.toDegrees ((∠ A B C).toReal)

-- 设 J, M, K 是平面上的点
variable (J M K : P)

-- 形式化"∠JMK 的度数为 103"
theorem angleJMK_measure_eq_103_degrees : measureOfAngleInDegrees J M K = 103 := by
  sorry