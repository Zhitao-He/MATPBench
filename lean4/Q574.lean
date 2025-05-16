import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.InnerProductSpace.EuclideanDist
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
open EuclideanGeometry

abbrev Point := EuclideanSpace ℝ (Fin 2)

namespace Problem


variable (K L J : Point)


def kl_actual_length : ℝ := 6


def angleJKL_actual_deg : ℝ := 148


noncomputable def degToRad (d : ℝ) : ℝ := d * (Real.pi / 180)


axiom hKL : dist K L = kl_actual_length
axiom hKJ : dist K J = kl_actual_length
axiom hAngle : ∠ J K L = degToRad angleJKL_actual_deg


noncomputable def areaOfSector (O A B : Point) : ℝ :=
  (1 / 2) * (dist O A)^2 * (∠ A O B)


noncomputable def targetAreaValue : ℝ := (74 * Real.pi) / 5


theorem area_KLJ_eq_target :
  areaOfSector K J L = targetAreaValue := by sorry

end Problem
