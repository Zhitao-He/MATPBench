import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
noncomputable section
abbrev PPoint := EuclideanSpace ℝ (Fin 2) 
def degreesToRadians (d : ℝ) : ℝ := d * Real.pi / 180
theorem angle_FEB_eq_75_degrees
    (A B C D E F : PPoint) 
    (h_angle_AFC : EuclideanGeometry.angle A F C = degreesToRadians 70)
    (h_angle_EBF : EuclideanGeometry.angle E B F = degreesToRadians 35)
    (h_AD_perp_ED : EuclideanGeometry.angle A D E = degreesToRadians 90)
    (h_EB_perp_CB : EuclideanGeometry.angle E B C = degreesToRadians 90)
    (h_vertical_angles_AFC_BFE : EuclideanGeometry.angle A F C = EuclideanGeometry.angle B F E)
    : EuclideanGeometry.angle F E B = degreesToRadians 75 := by 
  sorry
end
