import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
namespace Problem
abbrev PPoint := EuclideanSpace ℝ (Fin 2) 
noncomputable def degToRad (deg : ℝ) : ℝ := deg * Real.pi / 180
theorem angle_RQS_value_is_61_deg
    (D Q S R : PPoint) 
    (hQ_ne_D : Q ≠ D)
    (hS_ne_D : S ≠ D)
    (hR_ne_Q : R ≠ Q)
    (hS_ne_Q : S ≠ Q)
    (hDQ_eq_DS : dist D Q = dist D S)
    (hRadius_pos : dist D Q > 0)
    (hAngle_QDS : EuclideanGeometry.angle Q D S = degToRad 122) 
    (hTangent_DQR : EuclideanGeometry.angle D Q R = degToRad 90) 
    (hAngle_add_at_Q :
      EuclideanGeometry.angle D Q S + EuclideanGeometry.angle R Q S = EuclideanGeometry.angle D Q R) 
    : EuclideanGeometry.angle R Q S = degToRad 61 := by 
  sorry
end Problem
