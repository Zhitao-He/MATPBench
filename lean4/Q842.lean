import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic

open Real EuclideanGeometry

-- 二维欧几里得空间中的点
abbrev EPoint := EuclideanSpace ℝ (Fin 2)

-- 点 P 到点 S 的距离
def xGeom (P S : EPoint) : ℝ := dist P S

/--
  已知：
  - O 为圆心，R, Q, T, S 在同一圆上
  - P 是 RS 与 QT 的交点，且 P 在 R,S 之间，P 在 Q,T 之间
  - |RP| = 15, |QP| = 6, |TP| = 4
  - A 是 RP 的中点
  求：x = |PS| = 10
-/
theorem value_of_x_is_10
    (O R Q T S A P : EPoint)
    (h_R_on_circle : dist O R = dist O Q)
    (h_T_on_circle : dist O T = dist O R)
    (h_S_on_circle : dist O S = dist O R)
    (h_P_between_R_S : Sbtw ℝ R P S)
    (h_P_between_Q_T : Sbtw ℝ Q P T)
    (h_dist_RP : dist R P = 15)
    (h_dist_QP : dist Q P = 6)
    (h_dist_TP : dist T P = 4)
    (h_A_midpoint_RP : A = midpoint ℝ R P)
    : xGeom P S = 10 := by
  sorry