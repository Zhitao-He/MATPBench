import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic

open Real Set

variable {A B C P D E F : EuclideanSpace ℝ (Fin 2)}
variable {a b c d : ℝ}

/--
Let $A,B,C$ be non-collinear points in $\mathbb{R}^2$, forming a triangle.
Let $P$ be a point in the interior of triangle $ABC$.
Let $D,E,F$ be points on sides $BC,AC,AB$ respectively, with $APD$, $BPE$, $CPF$ collinear and in each, $P$ is strictly between the respective vertices and the corresponding point on the opposite side.
Suppose $|AP|=a$, $|BP|=b$, $|CP|=c$ and $|PD|=|PE|=|PF|=d$ with all quantities $>0$, $a+b+c=43$, $d=3$.
Then $a*b*c=441$.
-/
theorem triangleCevianSegmentsProduct
    (h₁ : ¬Collinear A B C)
    (h₂ : P ∈ interior (convexHull ℝ {A, B, C}))
    (hD : D ∈ segment ℝ B C)
    (hE : E ∈ segment ℝ A C)
    (hF : F ∈ segment ℝ A B)
    (hAPD : Sbtw A P D)
    (hBPE : Sbtw B P E)
    (hCPF : Sbtw C P F)
    (ha : dist A P = a)
    (hb : dist B P = b)
    (hc : dist C P = c)
    (hPd : dist P D = d)
    (hPe : dist P E = d)
    (hPf : dist P F = d)
    (ha_pos : 0 < a)
    (hb_pos : 0 < b)
    (hc_pos : 0 < c)
    (hd_pos : 0 < d)
    (h_sum : a + b + c = 43)
    (hd : d = 3) :
    a * b * c = 441 := by
  sorry