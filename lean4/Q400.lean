import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Triangle

-- 定义二维欧氏空间的平面
abbrev EucPlane := EuclideanSpace ℝ (Fin 2)

-- 三条直线
def line1 : Set EucPlane :=
  {p | p 1 = -2 * (p 0) + 8}

def line2 : Set EucPlane :=
  {p | p 1 = (1/2 : ℝ) * (p 0) - 2}

def line3 : Set EucPlane :=
  {p | p 0 = -2}

-- 三个顶点
def pointA : EucPlane := ![4, 0]
def pointB : EucPlane := ![-2, 12]
def pointC : EucPlane := ![-2, -3]

theorem area_of_triangle_is_45 :
  Real.abs (Triangle.area pointA pointB pointC) = 45 := by
  sorry