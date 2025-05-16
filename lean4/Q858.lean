import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic

-- 设 ℝ 上的欧氏空间 E，P 为"点"的类型
variable {P : Type*} [EuclideanSpace ℝ P]

-- F、B 为空间中的两个点
variable (F B : P)

-- 定义两点之间的距离（线段长度）
def lengthOfLine (p₁ p₂ : P) : ℝ := dist p₁ p₂

-- 命题：FB 的长度为 5
theorem problem_statement : lengthOfLine F B = 5 := by sorry

-- 或直接用 dist
theorem problem_statement_direct : dist F B = 5 := by sorry