import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic

/-!
# Euclidean Geometry Problem: WX = a + 12, WZ = 4a − 15, XY = YZ, WY ⟂ ZX, Y is midpoint of XZ. Prove WX = 21.
-/

section EuclideanGeometryProblem

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

/-- 
Given points W, X, Y, Z : P and a : ℝ,  
- dist W X = a + 12,  
- dist W Z = 4 * a - 15,  
- Y is the midpoint of XZ,  
- the line WY is perpendicular to XZ at Y,  
prove: dist W X = 21.
-/
theorem length_of_WX_is_21
    (W X Y Z : P) (a : ℝ)
    (h_WX : dist W X = a + 12)
    (h_WZ : dist W Z = 4 * a - 15)
    (h_midpoint : Y = midpoint ℝ X Z)
    (h_perp : inner (W -ᵥ Y) (X -ᵥ Z) = 0)
    (h_X_ne_Z : X ≠ Z) :
    dist W X = 21 := by
  sorry

end EuclideanGeometryProblem