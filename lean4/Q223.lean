import Mathlib.Data.Real.Basic

-- 半径（厘米）
def sectorRadius : ℝ := 5

-- 圆心角（度）
def sectorAngleDeg : ℝ := 23

-- 角度转弧度
def degToRad (deg : ℝ) : ℝ := deg * (Real.pi / 180)

-- 圆心角（弧度）
def sectorAngleRad : ℝ := degToRad sectorAngleDeg

-- 扇形面积公式：A = (r^2 * θ) / 2，θ为弧度
def sectorArea (r θ : ℝ) : ℝ := (r^2 * θ) / 2

-- 实际计算的面积
def computedSectorArea : ℝ := sectorArea sectorRadius sectorAngleRad

-- 保留两位小数
def round2 (x : ℝ) : ℝ := (Real.round (x * 100)) / 100

-- 题目的声称结果
def claimedRoundedArea : ℝ := 10.01

-- 题目的形式化
theorem problemClaim :
  round2 computedSectorArea = claimedRoundedArea := by sorry