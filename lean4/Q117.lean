import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
abbrev Point := EuclideanSpace ℝ (Fin 2)
def mkPt (x y : ℝ) : Point := ![x, y]
def pointA : Point := mkPt 0 0
def pointB : Point := mkPt 3 0
def pointD : Point := mkPt 0 11
def pointC : Point := mkPt 3 11
noncomputable def pointF : Point := mkPt (-273/65) (364/65)
noncomputable def pointE : Point := pointA + (pointC - pointF)
noncomputable def pointP1 : Point := mkPt 3 (9/4)
noncomputable def pointP2 : Point := mkPt 0 (35/4)
noncomputable def areaOfShadedRegion : ℝ := 105/4
def m : ℕ := 105
def n : ℕ := 4
lemma m_positive : 0 < m := by decide
lemma n_positive : 0 < n := by decide
lemma m_n_relatively_prime : Nat.gcd m n = 1 := by native_decide
def sum_m_n : ℕ := m + n
theorem final_answer_value : sum_m_n = 109 := by rfl
