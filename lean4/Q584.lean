import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.LinearAlgebra.FiniteDimensional.Defs 
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
open Real EuclideanGeometry
noncomputable section
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
variable (A B C D E F G : PPoint)
theorem angle_EAG_is_52_degrees (A B C D E F G : PPoint)
    (h_angle_DCA : EuclideanGeometry.angle D C A = (50 : ℝ) * Real.pi / 180)
    (h_angle_ADC : EuclideanGeometry.angle A D C = (78 : ℝ) * Real.pi / 180)
    (h_angle_FGA : EuclideanGeometry.angle F G A = (120 : ℝ) * Real.pi / 180)
    (h_angle_BFG : EuclideanGeometry.angle B F G = (56 : ℝ) * Real.pi / 180)
    (h_A_sbtw_C_G : Sbtw ℝ C A G)
    (h_G_sbtw_A_B : Sbtw ℝ A G B)
    (h_A_sbtw_E_D : Sbtw ℝ E A D) :
    EuclideanGeometry.angle E A G = (52 : ℝ) * Real.pi / 180 := by
  sorry
end
