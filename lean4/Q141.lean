import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt

noncomputable section

-- 定义平面欧氏空间 P
local notation "P" => EuclideanSpace ℝ (Fin 2)

/--
定义：给定依次的定向四点 p1, p2, p3, p4，判断它们是否组成正方形（逆时针）。
- p1p2、p2p3、p3p4、p4p1 是正方形的四条边
- 任一顶点的相邻两边长度相等、相邻两边垂直
- 对角点间矢量符合平行四边形
-/
def IsSquare (p1 p2 p3 p4 : P) : Prop :=
  let s12 := dist p1 p2
  let s23 := dist p2 p3
  let s34 := dist p3 p4
  let s41 := dist p4 p1
  s12 > 0 ∧ s23 = s12 ∧ s34 = s12 ∧ s41 = s12 ∧
  EuclideanGeometry.Angle p4 p1 p2 = Real.pi / 2 ∧
  EuclideanGeometry.Angle p1 p2 p3 = Real.pi / 2 ∧
  EuclideanGeometry.Angle p2 p3 p4 = Real.pi / 2 ∧
  EuclideanGeometry.Angle p3 p4 p1 = Real.pi / 2 ∧
  p3 = p2 +ᵥ (p4 -ᵥ p1)

/--
题目主定理形式化：在正方形 ABCD 内存在正方形 EFGH，
使得 EFGH 的每条边延长后都经过 ABCD 的一个顶点，
且 BE = 1，求 inner square 的面积 area_efgh_val（以存在性形式给出）。
--/
theorem square_in_square_area :
  let s_abcd := Real.sqrt 50
  let a_pt : P := ![0, s_abcd]      -- A (左上)
  let b_pt : P := ![s_abcd, s_abcd] -- B (右上)
  let c_pt : P := ![s_abcd, 0]      -- C (右下)
  let d_pt : P := ![0, 0]           -- D (左下)
  ∃ e_pt f_pt g_pt h_pt : P,
    IsSquare e_pt f_pt g_pt h_pt ∧
    -- extension 条件，ef 经过 A, fg 经过 B, gh 经过 C, he 经过 D
    (∃ (ext1 : P), (ext1 = a_pt) ∧ Collinear ℝ ({e_pt, f_pt, ext1})) ∧
    (∃ (ext2 : P), (ext2 = b_pt) ∧ Collinear ℝ ({f_pt, g_pt, ext2})) ∧
    (∃ (ext3 : P), (ext3 = c_pt) ∧ Collinear ℝ ({g_pt, h_pt, ext3})) ∧
    (∃ (ext4 : P), (ext4 = d_pt) ∧ Collinear ℝ ({h_pt, e_pt, ext4})) ∧
    -- BE = 1
    dist b_pt e_pt = 1 ∧
    -- 正方形面积 = 边长²
    ∃ area_efgh_val : ℝ, (dist e_pt f_pt) ^ 2 = area_efgh_val
  := by sorry

end