import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic

namespace FigureArea

local notation "P" => EuclideanSpace ℝ (Fin 2)

def ptA : P := ![0, 0]
def ptB : P := ![0, 4]
def ptC : P := ![6, 4]
def ptD : P := ![14, 0]

-- 圆心为左边竖线段的中点
def ptO : P := ![0, 2]
def radius : ℝ := 2

-- 梯形参数
def upperBase : ℝ := 6  -- BC长度
def lowerBase : ℝ := 14 -- AD长度
def height : ℝ := 4     -- 梯形高度

-- 梯形面积公式：(上底+下底)×高/2
def areaTrapezoid : ℝ := (upperBase + lowerBase) * height / 2

-- 四分之一圆面积公式：πr²/4
def areaQuarterCircle : ℝ := Real.pi * radius ^ 2 / 4

-- 图形总面积：梯形面积减去四分之一圆面积
def figureArea : ℝ := areaTrapezoid - areaQuarterCircle

-- 定理：图形面积等于549
theorem find_area_figure_is_549 : figureArea = 549 := by
  sorry

end FigureArea