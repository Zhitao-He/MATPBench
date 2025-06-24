import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry Real
abbrev EuclideanPlane := EuclideanSpace ℝ (Fin 2)
structure IsRegularPentagon (P Q R S T : EuclideanPlane) : Prop where
  dist_PQ_eq_QR : dist P Q = dist Q R
  dist_QR_eq_RS : dist Q R = dist R S
  dist_RS_eq_ST : dist R S = dist S T
  dist_ST_eq_TP : dist S T = dist T P
  dist_TP_eq_PQ : dist T P = dist P Q
  angle_TPQ : ∠ T P Q = (3 * Real.pi / 5)
  angle_PQR : ∠ P Q R = (3 * Real.pi / 5)
  angle_QRS : ∠ Q R S = (3 * Real.pi / 5)
  angle_RST : ∠ R S T = (3 * Real.pi / 5)
  angle_STP : ∠ S T P = (3 * Real.pi / 5)
  side_length_pos : dist P Q > 0
noncomputable def degreesToRadians (d : ℝ) : ℝ := d * Real.pi / 180
theorem angleXQSIs18Degrees
    (P Q R S T : EuclideanPlane)
    (h_pentagon : IsRegularPentagon P Q R S T)
    (X : EuclideanPlane)
    (h_X_midpoint : X = midpoint ℝ S T) :
    ∠ X Q S = degreesToRadians 18 := by sorry