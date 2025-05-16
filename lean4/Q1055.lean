import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic

open EuclideanGeometry
open scoped EuclideanGeometry

-- 定义二维欧几里得空间中的点
abbrev Point := EuclideanSpace ℝ (Fin 2)

-- 声明变量
variable (A B C D E F O : Point)
variable (r : ℝ)

-- 假设条件
variable (hO_midpoint_AB : O = midpoint ℝ A B)
variable (hr_pos : 0 < r)
variable (hA_on_circle : dist A O = r)
variable (hB_on_circle : dist B O = r)
variable (hA_ne_B : A ≠ B)

-- 定义垂直于AB的向量
def vec_AB_perp : Point => ![ (A -ᵥ B) 1, -((A -ᵥ B) 0) ]

-- 半圆上的点条件
variable (hC_on_circle : dist C O = r)
variable (hC_on_semicircle : 0 ≤ inner (C -ᵥ O) (vec_AB_perp A B))
variable (hD_on_circle : dist D O = r)
variable (hD_on_semicircle : 0 ≤ inner (D -ᵥ O) (vec_AB_perp A B))

-- 垂直条件
variable (hCA_perp_AB : inner (C -ᵥ A) (B -ᵥ A) = 0)
variable (hDB_perp_AB : inner (D -ᵥ B) (A -ᵥ B) = 0)

-- 切线条件
variable (hEC_tangent : inner (E -ᵥ C) (C -ᵥ O) = 0)
variable (hED_tangent : inner (E -ᵥ D) (D -ᵥ O) = 0)

-- F在CD上且OF垂直于CD
variable (hF_on_CD : F ∈ segment ℝ C D)
variable (hOF_perp_CD : inner (O -ᵥ F) (D -ᵥ C) = 0)

-- 非退化条件
variable (hF_ne_E : F ≠ E)
variable (hF_ne_D : F ≠ D)
variable (hO_ne_F : O ≠ F)
variable (hC_ne_D : C ≠ D)

-- 目标定理
theorem semicircle_tangent_angle_equality :
    angle E F D = angle F O B := by
  sorry