import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Pi.Bounds

/-!
  Formalization of: "The perimeter of the circle centered at O equals 25 * π"
-/

-- Define the standard Euclidean plane
abbrev EucPlane := EuclideanSpace ℝ (Fin 2)

section CirclePerimeterStatement

  -- Let O be a point in the Euclidean plane
  variable (O : EucPlane)

  -- The circle has some positive radius r
  variable {r : ℝ} (hr_pos : 0 < r)

  -- Define the circle as a Euclidean sphere in the plane
  def circleInPlane : EuclideanGeometry.Sphere EucPlane :=
    ⟨O, r, le_of_lt hr_pos⟩

  -- The perimeter (circumference) of a circle is 2 * π * r
  def circlePerimeter (c : EuclideanGeometry.Sphere EucPlane) : ℝ :=
    2 * Real.pi * c.radius

  -- Given: The perimeter of the circle centered at O is 25π
  theorem perimeterOfCircle :
    circlePerimeter (circleInPlane O hr_pos) = 25 * Real.pi := by
    sorry

end CirclePerimeterStatement