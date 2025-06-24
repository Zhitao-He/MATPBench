import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry Real
namespace ProblemFormalization
def O : EuclideanSpace ℝ (Fin 2) := ![0, 0]
def A : EuclideanSpace ℝ (Fin 2) := ![0, 8]
def B (r : ℝ) : EuclideanSpace ℝ (Fin 2) := ![r, 0]
noncomputable def triangleArea (p1 p2 p3 : EuclideanSpace ℝ (Fin 2)) : ℝ :=
  (1/2 : ℝ) * abs (((p2 -ᵥ p1) 0 * (p3 -ᵥ p1) 1) - ((p2 -ᵥ p1) 1 * (p3 -ᵥ p1) 0))
theorem triangle_area_r
    (r : ℝ)
    (h_area : triangleArea O A (B r) = 40) :
    r = 10 :=
  by sorry
end ProblemFormalization
