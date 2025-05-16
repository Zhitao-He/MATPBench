import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
open scoped Real EuclideanGeometry


abbrev EucPlane := EuclideanSpace ℝ (Fin 2)


theorem value_of_angle_ACD_is_170_degrees
    (O A B C D : EucPlane)
    (hAB : A ≠ B) (hBC : B ≠ C) (hCD : C ≠ D) (hDA : D ≠ A) (hAC : A ≠ C) (hBD : B ≠ D)
    (hA_circ : dist A O = dist B O)
    (hB_circ : dist B O = dist C O)
    (hC_circ : dist C O = dist D O)
    (h_angle_BCA : ∠ B C A = (130 * Real.pi) / 180)
    (h_angle_DCB : ∠ D C B = (60 * Real.pi) / 180)
    : ∠ A C D = (170 * Real.pi) / 180 := by
  sorry