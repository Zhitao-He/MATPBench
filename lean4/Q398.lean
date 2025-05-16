import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Triangle

abbrev Point3D := EuclideanSpace ℝ (Fin 3)


def P : Point3D := ![8, 8, 0]


def Q : Point3D := ![16, 16, 4]


theorem dist_PQ_eq_12 : dist P Q = 12 := by sorry
