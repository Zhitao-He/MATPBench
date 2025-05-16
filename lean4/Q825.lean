import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic

noncomputable section

open Real EuclideanGeometry

-- Let P be the Euclidean plane, V its underlying vector space
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAffineSpace V P]
variable [Fact (FiniteDimensional.finrank ℝ V = 2)]

-- Points
variable (A B C D E F G : P)

-- Collinearity hypotheses
hypothesis h_col_ACGE : Collinear ℝ ({A, C, G, E} : Set P)
hypothesis h_col_BGD : Collinear ℝ ({B, G, D} : Set P)

-- Betweenness hypotheses (strict)
hypothesis h_sbtw_ACG : Sbtw ℝ A C G
hypothesis h_sbtw_CGE : Sbtw ℝ C G E
hypothesis h_sbtw_BGD : Sbtw ℝ B G D

-- Angle conditions (angles in radians)
hypothesis h_angle_BGE : (∠ B G E).value = (75 / 180 : ℝ) * π
hypothesis h_angle_FCG : (∠ F C G).value = (100 / 180 : ℝ) * π

-- E is not on the line B-G-D
hypothesis h_E_not_col_BGD : ¬ Collinear ℝ ({B, G, E} : Set P)

-- The conclusion: the measure of ∠EGD is 105°
theorem measure_angle_EGD : (∠ E G D).value = (105 / 180 : ℝ) * π := by
  sorry

end