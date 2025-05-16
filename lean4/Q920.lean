import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle


section

open Real
open EuclideanGeometry

abbrev P := EuclideanSpace ℝ (Fin 2)


variable (A B C D : P)


variable (hAB : dist A B = 18)
variable (hAngle_BAD : ∠ B A D = π / 3)
variable (hAngle_ABC : ∠ A B C = π / 4)
variable (hRight_C : ∠ B C A = π / 2)


noncomputable def z (A B D : P) : ℝ := dist D B


theorem value_of_z_eq_12_sqrt_3 : z A B D = 12 * sqrt 3 := by
  sorry

end