import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def degreesToRadians (d : ℝ) : ℝ := d * (Real.pi / 180)
section
variable (A B C D E F G : P)
variable (h_BGE : EuclideanGeometry.angle B G E = degreesToRadians 75)
variable (h_FCG : EuclideanGeometry.angle F C G = degreesToRadians 100)
variable (h_sbtw_ACG : Sbtw ℝ A C G)
variable (h_sbtw_CGE : Sbtw ℝ C G E)
variable (h_sbtw_BGD : Sbtw ℝ B G D)
variable (h_E_not_on_line_BG : ¬ Collinear ℝ ({G, E, B} : Set P))
variable (h_F_not_on_line_CG : ¬ Collinear ℝ ({C, G, F} : Set P))
theorem find_angle_EGD :
    EuclideanGeometry.angle E G D = degreesToRadians 105 :=
  by
    sorry
end
