import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
open EuclideanGeometry
open scoped EuclideanGeometry Real
noncomputable section




abbrev EPlane := EuclideanSpace ℝ (Fin 2)


def O : EPlane := ![0, 0]

variable (r : ℝ) (hr : r > 0)


def decagonVertex (k : Fin 10) : EPlane :=
  let θ := 2 * π * (k : ℝ) / 10
  ![r * Real.cos θ, r * Real.sin θ]


def angle_x (r : ℝ) (hr : r > 0) : ℝ :=
  angle (decagonVertex r 8) (decagonVertex r 9) (decagonVertex r 0)


theorem decagon_octagon_angle (r : ℝ) (hr : r > 0) :
    angle_x r hr = π / 5 := by sorry

end
