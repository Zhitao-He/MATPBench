import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
open EuclideanGeometry

abbrev EucPlane := EuclideanSpace ℝ (Fin 2)


variable (Q R S T P : EucPlane)


variable (x y z : ℝ)


noncomputable def degToRad (d : ℝ) : ℝ := d * (Real.pi / 180)


axiom hQT : dist Q T = 5 * x
axiom hQS : dist Q S = 2 * y - 3
axiom hQR : dist Q R = y + 4
axiom hRS : dist R S = 27


axiom hAngleTQR : ∠ T Q R = degToRad 95
axiom hAngleRQP : ∠ R Q P = degToRad 33
axiom hAnglePSR : ∠ P S R = degToRad (3 * z)


theorem value_of_y : y = 9 := by sorry