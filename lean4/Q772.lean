import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Oriented.Affine
import Mathlib.Data.Real.Basic

open Real Angle

-- Points in the Euclidean plane
abbrev EuclideanPlane := EuclideanSpace Real (Fin 2)

-- Declare points on the circle centered at A
variable (A B C D E : EuclideanPlane)

-- Let x_val : ℝ denote the degree value of the angle ∠EAC = x°
variable (x_val : ℝ)

-- Degrees to radians conversion
def degToRad (deg : ℝ) : ℝ := deg * (π / 180)

-- Hypotheses: A ≠ B ≠ C ≠ D ≠ E (for oangle to be well-defined at A)
variable (hA_ne_B : A ≠ B)
variable (hA_ne_C : A ≠ C)
variable (hA_ne_D : A ≠ D)
variable (hA_ne_E : A ≠ E)

-- Hypotheses for angles, with counterclockwise orientation at A
variable (h_oangle_BAD : oangle B A D = Angle.ofReal (degToRad 65))
variable (h_oangle_DAE : oangle D A E = Angle.ofReal (degToRad 110))
variable (h_oangle_EAC : oangle E A C = Angle.ofReal (degToRad x_val))
variable (h_oangle_CAB : oangle C A B = Angle.ofReal (degToRad 90))

-- The conclusion: x = 95°
theorem find_value_of_x : x_val = 95 := by
  sorry