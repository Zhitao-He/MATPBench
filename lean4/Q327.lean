import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Altitude
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Geometry.Euclidean.Line
import Mathlib.Data.Real.Basic

open EuclideanGeometry Real

section Putnam2023A2

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
variable (dimV : FiniteDimensional.finrank ℝ V = 2)
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

variable (A B C : P)
variable (h_noncollinear : ¬ Collinear ℝ A B C)
local notation "tri" => Triangle.mk A B C h_noncollinear
variable (h_acute : tri.IsAcute)

def D (A B C : P) (h_noncollinear : ¬ Collinear ℝ A B C) : P := 
  perpFoot A (lineThrough B C (Triangle.mk A B C h_noncollinear).ne₂₃)

def E (A B C : P) (h_noncollinear : ¬ Collinear ℝ A B C) : P := 
  perpFoot B (lineThrough A C (Triangle.mk A B C h_noncollinear).ne₁₃)

def F (A B C : P) (h_noncollinear : ¬ Collinear ℝ A B C) : P := 
  perpFoot C (lineThrough A B (Triangle.mk A B C h_noncollinear).ne₁₂)

def H (A B C : P) (h_noncollinear : ¬ Collinear ℝ A B C) : P := 
  Triangle.orthocenter A B C h_noncollinear

variable (hBD : dist B (D A B C h_noncollinear) = 5)
variable (hCD : dist C (D A B C h_noncollinear) = 9)
variable (hCE : dist C (E A B C h_noncollinear) = (42 / 5 : ℝ))

theorem length_HE :
    dist (H A B C h_noncollinear) (E A B C h_noncollinear) = (99 / 20 : ℝ) := by
  sorry

end Putnam2023A2