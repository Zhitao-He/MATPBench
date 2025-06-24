import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
variable (A B C D Y : P)
variable (x y : ℝ)
axiom h_AC_eq_AY : dist A C = dist A Y
axiom h_AD_val   : dist A D = x + 2
axiom h_CB_val   : dist C B = (5/3 : ℝ) * x + 11
axiom h_DB_val   : dist D B = 3 * y - 9
axiom h_DB_eq_YD : dist D B = dist Y D
axiom h_YD_val   : dist Y D = 2 * y + 6
theorem value_of_x : x = 21 := by sorry