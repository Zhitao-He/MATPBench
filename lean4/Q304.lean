import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle

-- 定义在欧几里得平面 ℝ² 中的点
def pointA : EuclideanSpace ℝ (Fin 2) := ![4, 9]
def pointB : EuclideanSpace ℝ (Fin 2) := ![0, 0]
def pointC : EuclideanSpace ℝ (Fin 2) := ![12, 0]

-- 使用以上三点定义三角形 ABC
def triangleABC : Triangle ℝ (EuclideanSpace ℝ (Fin 2)) :=
  Triangle.mk pointA pointB pointC

-- 定理：三角形 ABC 的面积是 54
theorem triangle_ABC_area_is_54 : Triangle.area triangleABC = 54 := by sorry