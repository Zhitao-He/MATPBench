import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

-- 定义三角形的高 h（对边），底为 20，夹角为 43°（转为弧度）
def h : ℝ := 20 * Real.tan (43 * Real.pi / 180)

-- 题目要求：h 四舍五入等于 19
theorem round_h_eq_19 : Real.round h = 19 := by sorry