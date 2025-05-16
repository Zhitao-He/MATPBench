import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
open EuclideanGeometry



abbrev EuclideanPlane := EuclideanSpace ℝ (Fin 2)


noncomputable def degToRad (d : ℝ) : ℝ := d * Real.pi / 180


variable (A E B C F : EuclideanPlane)


variable (x y : ℝ)


variable (hAE_distinct : A ≠ E)
variable (hEB_distinct : E ≠ B)
variable (hBC_distinct : B ≠ C)
variable (hCF_distinct : C ≠ F)
variable (hFA_distinct : F ≠ A)
variable (hBF_distinct : B ≠ F)


variable (hAngleA : ∠ F A E = degToRad 68)
variable (hAngleE : ∠ A E B = degToRad (2 * x))
variable (hAngleF : ∠ C F B = degToRad (3 * x - 15))
variable (hAngleC : ∠ B C F = degToRad (y ^ 2))


theorem value_of_x : x = 34 := by
  sorry