import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

variable {P : Type*} [NormedAddCommGroup P] [InnerProductSpace ℝ P]

theorem inscribed_angle_implies_chord_length
    (O A B C : P)
    (hOA : dist A O = 2)
    (hOB : dist B O = 2)
    (hOC : dist C O = 2)
    (h_angle_ACB : ∠ A C B = Real.pi / 6)
    (hDistinct_CA : C ≠ A)
    (hDistinct_CB : C ≠ B)
    (hDistinct_AB : A ≠ B) : 
    dist A B = 2 := by
  sorry