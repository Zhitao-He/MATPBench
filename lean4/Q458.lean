import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Sqrt




abbrev Euc3 := EuclideanSpace ℝ (Fin 3)


structure RectParallelepiped where
  a : ℝ
  b : ℝ
  c : ℝ
  ha : a > 0
  hb : b > 0
  hc : c > 0

namespace RectParallelepiped


def X (rp : RectParallelepiped) : Euc3 := ![rp.a, rp.b, rp.c]
def Y (rp : RectParallelepiped) : Euc3 := ![rp.a, rp.b, 0]
def Z (rp : RectParallelepiped) : Euc3 := ![0, rp.b, rp.c]
def A (rp : RectParallelepiped) : Euc3 := ![rp.a, 0, 0]

end RectParallelepiped


theorem parallelepiped_diagonal_XA_eq_10 :
  ∃ (rp : RectParallelepiped),
    dist (rp.X) (rp.Z) = Real.sqrt 55 ∧
    dist (rp.X) (rp.Y) = 8 ∧
    dist (rp.Y) (rp.Z) = 9 ∧
    dist (rp.X) (rp.A) = 10 := by
  sorry


theorem parallelepiped_exists_example :
  let a := Real.sqrt 45
  let b := Real.sqrt 19
  let c := 6
  let X : Euc3 := ![a, b, c]
  let Y : Euc3 := ![a, b, 0]
  let Z : Euc3 := ![0, b, c]
  let A : Euc3 := ![a, 0, 0]
  (a > 0 ∧ b > 0 ∧ c > 0) ∧
  (dist X Y = 6) ∧
  (dist X Z = Real.sqrt 55) ∧
  (dist Y Z = 9) ∧
  (dist X A = 10) := by
  sorry