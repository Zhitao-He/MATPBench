import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic



variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]


variable (A B C : P)


variable (x : ℝ)


def lengthAB (x : ℝ) : ℝ := 15 * x + 9
def lengthAC (x : ℝ) : ℝ := 7 * x
def lengthBC (x : ℝ) : ℝ := 11 * x + 5


variable (hAB : dist A B = lengthAB x)
variable (hAC : dist A C = lengthAC x)
variable (hBC : dist B C = lengthBC x)


variable (h_perimeter : dist C B + dist B A + dist A C = 320)


theorem length_CB_is_107 : dist B C = 107 := by
  sorry