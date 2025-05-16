import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
open Real
open EuclideanSpace

namespace QuadrilateralAreaProblem


axiom E : EuclideanSpace ℝ (Fin 2)
axiom H : EuclideanSpace ℝ (Fin 2)
axiom G : EuclideanSpace ℝ (Fin 2)
axiom F : EuclideanSpace ℝ (Fin 2)


def vecDet (v w : EuclideanSpace ℝ (Fin 2)) : ℝ :=
  v 0 * w 1 - v 1 * w 0


noncomputable def triangleArea (p1 p2 p3 : EuclideanSpace ℝ (Fin 2)) : ℝ :=
  (1 / 2) * |vecDet (p2 -ᵥ p1) (p3 -ᵥ p1)|


noncomputable def areaOfQuadrilateral (p1 p2 p3 p4 : EuclideanSpace ℝ (Fin 2)) : ℝ :=
  triangleArea p1 p2 p3 + triangleArea p1 p3 p4


theorem specific_quadrilateral_area_EHGF :
  areaOfQuadrilateral E H G F = 135 * sqrt 2 / 2 := by sorry

end QuadrilateralAreaProblem