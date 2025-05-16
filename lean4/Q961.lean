-- 导入必要的 Mathlib4 库
-- Mathlib.Geometry.Euclidean.Basic 提供了欧几里得空间的基本定义
import Mathlib.Geometry.Euclidean.Basic
-- Mathlib.Geometry.Euclidean.Circumcenter 定义了外心
import Mathlib.Geometry.Euclidean.Circumcenter
-- Mathlib.Geometry.Euclidean.Altitude 定义了垂心
import Mathlib.Geometry.Euclidean.Altitude
-- affineSpan, Collinear, midpoint 等通过 Mathlib.Geometry.Euclidean.Basic 间接导入

-- 打开 EuclideanGeometry 命名空间以使用较短的名称，如 circumcenter, orthocenter
open EuclideanGeometry

-- 声明 P 为欧几里得仿射空间中的点类型
-- Vector ℝ P 是其关联的向量空间
-- 我们在二维欧几里得空间中工作
variable {P : Type*} [EuclideanSpace ℝ P]
-- 假设空间 P 是二维的
variable [Fact (FiniteDimensional.finrank ℝ (Vector ℝ P) = 2)]

-- 声明问题中涉及的点
variable (A B C D E F H O P_circ : P)

-- 定义问题的假设条件

-- h_ABC_nd: 三角形 ABC 非退化 (A, B, C 不共线)
variable (h_ABC_nd : ¬ Collinear ℝ ({A, B, C} : Set P))

-- hD: D是边 BC 的中点
variable (hD : D = midpoint ℝ B C)

-- hO: O是三角形 ABC 的外心
variable (hO : O = circumcenter A B C)

-- hH: H是三角形 ABC 的垂心
variable (hH : H = orthocenter A B C)

-- hE_on_AB: 点 E 在直线 AB 上
variable (hE_on_AB : E ∈ affineSpan ℝ ({A, B} : Set P))
-- hF_on_AC: 点 F 在直线 AC 上
variable (hF_on_AC : F ∈ affineSpan ℝ ({A, C} : Set P))

-- hAE_eq_AF: 线段 AE 的长度等于 AF 的长度
variable (hAE_eq_AF : dist A E = dist A F)

-- h_DHE_collinear: 点 D, H, E 共线
variable (h_DHE_collinear : Collinear ℝ ({D, H, E} : Set P))

-- h_AEF_nd: 三角形 AEF 非退化 (A, E, F 不共线)，以便其外心有良好定义
variable (h_AEF_nd : ¬ Collinear ℝ ({A, E, F} : Set P))

-- hP_circ: P_circ 是三角形 AEF 的外心
variable (hP_circ : P_circ = circumcenter A E F)

-- 待证明的定理：OP 平行于 HD
-- 这意味着向量 (P_circ -ᵥ O) 与向量 (D -ᵥ H) 平行。
-- 两个向量 u, v 平行的定义是：存在实数 k，使得 u = k • v，或者存在实数 l，使得 v = l • u。
-- (vsub P_circ O) 表示向量 O->P_circ
-- (vsub D H) 表示向量 H->D
theorem op_parallel_hd :
  (∃ (k : ℝ), (P_circ -ᵥ O) = k • (D -ᵥ H)) ∨ (∃ (k : ℝ), (D -ᵥ H) = k • (P_circ -ᵥ O)) :=
by sorry