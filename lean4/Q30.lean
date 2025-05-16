import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic

open Real EuclideanSpace InnerProductSpace

namespace ProblemGeometry

-- Lean4中的二维欧几里得空间，点类型
abbrev PPoint := EuclideanSpace ℝ (Fin 2)

-- 设定图中所有点的坐标：R(0,0), S(10,0), Q(15,0), P(15,25), T(0,yT)
def R : PPoint := ![0, 0]
def S : PPoint := ![10, 0]
def Q : PPoint := ![15, 0]
def P : PPoint := ![15, 25]

-- T 在 y 轴上，且 T, P, S 共线
-- 注: 根据题目描述推断，T的坐标应为(0,-50)
def T : PPoint := ![0, -50]

-- 辅助引理：各点坐标
lemma R_coord : R = ![0, 0] := by rfl
lemma S_coord : S = ![10, 0] := by rfl
lemma Q_coord : Q = ![15, 0] := by rfl
lemma P_coord : P = ![15, 25] := by rfl
lemma T_coord : T = ![0, -50] := by rfl

-- R, S, Q 共线
lemma RSQ_collinear : AffineSubspace.collinear ℝ ({R, S, Q} : Set PPoint) := by
  simp [R, S, Q, AffineSubspace.collinear_iff]

-- T, P, S 共线
lemma TPS_collinear : AffineSubspace.collinear ℝ ({T, P, S} : Set PPoint) := by
  simp [T, P, S, AffineSubspace.collinear_iff]

-- RS ⊥ RT，即 RS 与 RT 互为垂直
lemma RS_perp_RT : ⟪S - R, T - R⟫ = 0 := by
  rw [S_coord, R_coord, T_coord]
  simp [inner]
  norm_num

-- PQ ⊥ QS
lemma PQ_perp_QS : ⟪P - Q, S - Q⟫ = 0 := by
  rw [P_coord, Q_coord, S_coord]
  simp [inner]
  norm_num

-- 形式化命题：证明 PT = 20/3
theorem PT_length_is_20_over_3 : dist P T = 20 / 3 := by
  sorry

end ProblemGeometry