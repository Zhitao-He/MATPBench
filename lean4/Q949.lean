import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Perpendicular

open EuclideanGeometry

-- 定义欧几里得平面 R²
abbrev PUNT := EuclideanSpace ℝ (Fin 2)

-- 点
variable {A B C D E F K : PUNT}

-- 假设：A, B, C 不共线（非退化三角形）
variable (h_noncollinear_ABC : ¬ Collinear ℝ A B C)

-- D 在 BC 上，且 AD 平分 ∠BAC
variable (h_D_on_BC : D ∈ segment ℝ B C)
variable (h_AD_angle_bisector : ∠ B A D = ∠ D A C)

-- E 为 D 到 AB 的垂足，即 DE ⟂ AB；E 落在 AB 上
variable (h_E_foot : E = orthogonalProjection (affineSpan ℝ {A, B}) D)

-- F 为 D 到 AC 的垂足，即 DF ⟂ AC；F 落在 AC 上
variable (h_F_foot : F = orthogonalProjection (affineSpan ℝ {A, C}) D)

-- K 为 CE 与 BF 的交点
variable (h_K_on_CE : K ∈ affineSpan ℝ {C, E})
variable (h_K_on_BF : K ∈ affineSpan ℝ {B, F})

-- 进一步假设 A ≠ K
variable (h_A_ne_K : A ≠ K)

-- 结论：AK ⟂ BC
theorem AK_perpendicular_to_BC :
    PerpendicularLines (affineSpan ℝ {A, K}) (affineSpan ℝ {B, C}) := by
  sorry