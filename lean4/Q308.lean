import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.Triangle

open Real EuclideanGeometry

variable {P : Type*} [EuclideanSpace ℝ P]
variable [FiniteDimensional ℝ P]
variable (h_dim_eq_two : FiniteDimensional.finrank ℝ P = 2)

namespace TriangleOBCAreaProblem

variable (A B C : P)

variable (h_AB_eq_5 : dist A B = 5)
variable (h_AC_eq_5 : dist A C = 5)
variable (h_BC_eq_6 : dist B C = 6)
variable (h_noncollinear : ¬ Collinear ℝ A B C)

def O_circumcenter : P := EuclideanGeometry.circumcenter A B C

theorem area_OBC_eq_target :
    Triangle.area (O_circumcenter A B C) B C = (21 : ℝ) / 8 := by sorry

end TriangleOBCAreaProblem