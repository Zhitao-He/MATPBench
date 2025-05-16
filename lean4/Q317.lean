import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Simplex
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Data.Real.Pi

namespace ProblemFormalization

open Real EuclideanGeometry
open scoped Real EuclideanGeometry

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

variable (A B C : P)

def triangleVertices : Fin 3 → P := ![A, B, C]

hypothesis hAffineIndependent : AffineIndependent ℝ (triangleVertices A B C)

def sTriangle : Simplex ℝ P 2 := Simplex.mk (triangleVertices A B C) (hAffineIndependent A B C)

def incenter_I : P := (sTriangle A B C).incenter

def pointD : P := orthogonalProjection ((sTriangle A B C).face 0).affineSpan (incenter_I A B C)
def pointE : P := orthogonalProjection ((sTriangle A B C).face 1).affineSpan (incenter_I A B C)
def pointF : P := orthogonalProjection ((sTriangle A B C).face 2).affineSpan (incenter_I A B C)

def angleBAC_value : ℝ := Unoriented.Angle.toReal (∠ B A C)

hypothesis hAngleBAC_is_72_degrees : angleBAC_value A B C = (72 / 180 : ℝ) * Real.pi

def angleEDF_value_radians : ℝ := Unoriented.Angle.toReal (∠ (pointE A B C) (pointD A B C) (pointF A B C))

def targetAngleEDF_radians_formula : ℝ := (Real.pi / 2) - ((angleBAC_value A B C) / 2)

theorem angleEDF_equals_formula : 
  angleEDF_value_radians A B C = targetAngleEDF_radians_formula A B C := by sorry

def angleEDF_value_degrees : ℝ := angleEDF_value_radians A B C * (180 / Real.pi)

theorem angleEDF_is_54_degrees : angleEDF_value_degrees A B C = 54 := by sorry

end ProblemFormalization