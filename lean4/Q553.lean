import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
variable {P : Type*} [MetricSpace P] [NormedAddTorsor ℝ P]
variable (Q B C : P)
variable (x : ℝ)
def h_dist_BQ (Q B : P) : dist Q B = 6 := by sorry
def h_dist_QC (Q C : P) : dist Q C = 8 := by sorry
def h_dist_BC (B C : P) (x : ℝ) : dist B C = x := by sorry
def h_B_between_QC (Q B C : P) : dist Q B + dist B C = dist Q C := by sorry
theorem value_of_x (Q B C : P) (x : ℝ) 
    (h1 : dist Q B = 6) 
    (h2 : dist Q C = 8)
    (h3 : dist B C = x)
    (h4 : dist Q B + dist B C = dist Q C) : x = 2 := by sorry