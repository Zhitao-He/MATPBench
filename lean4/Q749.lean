import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
open EuclideanGeometry
open Real


variable {P : Type*} [MetricSpace P] [NormedAddTorsor ℝ P]


variable (A B C D E F G : P)
variable (x : ℝ)


axiom h_AB : dist A B = 3
axiom h_BD : dist B D = x - 1
axiom h_CE : dist C E = x + 2
axiom h_EF : dist E F = 8


axiom h_AB_perp_BD : ∠ A B D = π / 2
axiom h_DE_perp_FE : ∠ D E F = π / 2
axiom h_angle_GAB_eq_EFG : ∠ G A B = ∠ E F G


axiom h_A_ne_B : A ≠ B
axiom h_B_ne_D : B ≠ D
axiom h_F_ne_E : F ≠ E
axiom h_E_ne_C : E ≠ C


theorem length_of_EC_is_24_div_5 : dist E C = 24 / 5 := by sorry
