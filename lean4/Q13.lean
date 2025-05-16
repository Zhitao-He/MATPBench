import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds
import Mathlib.Analysis.Convex.Segment

open Real EuclideanGeometry Angle

-- 度转弧度
noncomputable def degToRad (d : ℝ) : ℝ := (d / 180) * Real.pi

-- 点的变量
variable (O A B C E F : EuclideanPlane ℝ)
-- 半径
variable (r : ℝ)

-- A, B, E, F 在以 O 为圆心、r 为半径的圆上
variable (h_A_on_circle : dist A O = r)
variable (h_B_on_circle : dist B O = r)
variable (h_E_on_circle : dist E O = r)
variable (h_F_on_circle : dist F O = r)
variable (hr_pos : 0 < r)

-- AB 为直径，O 为 AB 的中点
variable (h_AB_diameter : midpoint ℝ A B = O)

-- EF、EB 是弦，E≠F，E≠B，F≠B
variable (h_E_ne_F : E ≠ F)
variable (h_E_ne_B : E ≠ B)
variable (h_F_ne_B : F ≠ B)

-- E 是弧 FEB 的中点（即圆心角 ∠FOE = ∠EOB）
variable (h_E_mid_arc : EuclideanGeometry.angle F O E = EuclideanGeometry.angle E O B)

-- EF 与 AB 相交于 C，且 C 分别在 EF, AB 的开放线段上
variable (h_C_on_segment_EF : C ∈ openSegment ℝ E F)
variable (h_C_on_segment_AB : C ∈ openSegment ℝ A B)

-- ∠AOF = 40°
variable (h_angle_AOF_40 : EuclideanGeometry.angle A O F = degToRad 40)

-- 结论：∠EFB = 35°
theorem angle_EFB_is_35_degrees :
  EuclideanGeometry.angle E F B = degToRad 35 := by
  sorry