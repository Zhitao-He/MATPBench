import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Analysis.InnerProductSpace.EuclideanDist
import Mathlib.Analysis.InnerProductSpace.EuclideanDist
import Mathlib.Geometry.Euclidean.Angle.Oriented.Affine
import Mathlib.Geometry.Euclidean.Angle.Oriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Oriented.RightAngle
import Mathlib.Geometry.Euclidean.Angle.Oriented.Rotation
import Mathlib.Geometry.Euclidean.Angle.Sphere
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Conformal
import Mathlib.Geometry.Euclidean.Angle.Unoriented.CrossProduct
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
open scoped Real
open EuclideanGeometry

abbrev EuclideanPlane := EuclideanSpace ℝ (Fin 2)


def IsIsoscelesRightTriangleAt (P Q R : EuclideanPlane) : Prop :=
  angle Q P R = Real.pi / 2 ∧ dist P Q = dist P R


noncomputable def perimeter (A B C D : EuclideanPlane) : ℝ :=
  dist A B + dist B C + dist C D + dist D A


theorem quadrilateral_perimeter_is_4_add_sqrt2
    (A B C D : EuclideanPlane)
    (hABC : IsIsoscelesRightTriangleAt A B C)
    (hCDA : IsIsoscelesRightTriangleAt D C A)
    (hBC : dist B C = 2) :
    perimeter A B C D = 4 + Real.sqrt 2 :=
by sorry
