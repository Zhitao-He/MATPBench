import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

open Real EuclideanGeometry InnerProductSpace

abbrev EuclideanPlane := EuclideanSpace ℝ (Fin 2)

namespace CircleProblem

-- Converts degrees to radians
def degToRad (d : ℝ) : ℝ := d * (π / 180)

/--
Let O, P, G : EuclideanPlane.
Suppose the circle centered at O has radius `radius > 0`, and P, G are points on that circle (i.e., dist P O = dist G O = radius).
Suppose that PN and GA are diameters of the circle (so N = 2•O - P, A = 2•O - G).
Given that the measure of angle GOP at the center is 78°, then the angle NGA at the circumference equals 39°.
-/
theorem inscribedAngleIsHalfCentralAngle_special_case
    (O P G : EuclideanPlane)
    (radius : ℝ)
    (h_radius_pos : 0 < radius)
    (hP_on_circle : dist P O = radius)
    (hG_on_circle : dist G O = radius)
    (h_angle_GOP : Angle.unoriented (G - O) (P - O) = degToRad 78) :
    let N := 2 • O - P
    let A := 2 • O - G
    Angle.unoriented (N - G) (A - G) = degToRad 39 :=
  sorry

end CircleProblem