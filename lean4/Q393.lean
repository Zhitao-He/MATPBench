import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Triangle
namespace EuclideanGeometryProblem
open Real EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
variable (A B C D : P)
def givenAC : ℝ := 13
def givenDC : ℝ := 2
def targetBDSq : ℝ := 22
theorem main_theorem
    (hAC : dist A C = givenAC)
    (hDC : dist D C = givenDC)
    (hD_between : Wbtw ℝ A D C)
    (hBD_perp : EuclideanGeometry.angle A D B = (π / 2))
    (hABC_right : EuclideanGeometry.angle A B C = (π / 2)) :
    dist B D = Real.sqrt targetBDSq :=
  by
    sorry
end EuclideanGeometryProblem
