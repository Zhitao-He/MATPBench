import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
namespace CircleProblemSetup


abbrev EuclideanPlane := EuclideanSpace ℝ (Fin 2)


axiom O : EuclideanPlane


axiom r : ℝ


def theCircle : Set EuclideanPlane :=
  Metric.sphere O r


axiom diameter_of_theCircle_is_10 : 2 * r = 10


theorem radius_is_positive : r > 0 := by sorry

end CircleProblemSetup
