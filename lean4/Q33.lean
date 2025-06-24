import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.InnerProductSpace.EuclideanDist
section GeometricTheorem
variable (I J X Y H W Z G : EuclideanSpace ℝ (Fin 2))
noncomputable def degreesToRadians (d : ℝ) : ℝ := d * (Real.pi / 180)
variable (h_X_ne_J : X ≠ J)
variable (h_Y_ne_J : Y ≠ J)
variable (h_proportion : (dist I J) / (dist X J) = (dist H J) / (dist Y J))
variable (h_angle_WXJ : InnerProductGeometry.angle (W -ᵥ X) (J -ᵥ X) = degreesToRadians 130)
variable (h_angle_WZG : InnerProductGeometry.angle (W -ᵥ Z) (G -ᵥ Z) = degreesToRadians 20)
variable (h_angle_YIZ : InnerProductGeometry.angle (Y -ᵥ I) (Z -ᵥ I) = degreesToRadians 50)
def PPoint := EuclideanSpace ℝ (Fin 2)
noncomputable instance : Dist PPoint where
  dist _ _ := sorry
end GeometricTheorem
