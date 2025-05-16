import Mathlib.Geometry.Euclidean.Angle.Oriented.Affine
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Pi.Notation

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable [FiniteDimensional ℝ V] [Fact (finrank ℝ V = 2)]
variable {P : Type*} [MetricSpace P] [NormedAffineSpace V P]
variable [Module.Oriented ℝ V (Fin 2)]

variable (O A B C E F : P)

axiom hA_ne_O : A ≠ O
axiom hB_ne_O : B ≠ O
axiom hC_ne_O : C ≠ O
axiom hE_ne_O : E ≠ O
axiom hF_ne_O : F ≠ O

axiom hCOA_is_right : angle A O C = π / 2
axiom hEOB_is_right : angle B O E = π / 2
axiom hFOE_is_forty_five : angle F O E = π / 4

axiom hAOC_oangle : oangle A O C hA_ne_O hC_ne_O = RealOrientedAngle.pi_div_two
axiom hCOB_oangle : oangle C O B hC_ne_O hB_ne_O = RealOrientedAngle.pi_div_two
axiom hBOE_oangle : oangle B O E hB_ne_O hE_ne_O = RealOrientedAngle.pi_div_two

theorem measure_of_arc_OAE_eq_270_degrees :
    oangle A O E hA_ne_O hE_ne_O = ↑(3 * π / 2) := by sorry