import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds

open Real EuclideanGeometry Angle

abbrev EPoint := EuclideanSpace ℝ (Fin 2)

structure IsRegularPentagon (P Q R S T : EPoint) (s : ℝ) where
  side_length_pos : s > 0
  dist_PQ : dist P Q = s
  dist_QR : dist Q R = s
  dist_RS : dist R S = s
  dist_ST : dist S T = s
  dist_TP : dist T P = s
  angle_TPQ : ∠ T P Q = 3 * π / 5
  angle_PQR : ∠ P Q R = 3 * π / 5
  angle_QRS : ∠ Q R S = 3 * π / 5
  angle_RST : ∠ R S T = 3 * π / 5
  angle_STP : ∠ S T P = 3 * π / 5

theorem regularPentagon_angle_XQS_is_18_degrees
    (P Q R S T : EPoint)
    (s : ℝ)
    (h_pentagon : IsRegularPentagon P Q R S T s) :
    let X := midpoint ℝ S T
    ∠ X Q S * (180 / π) = 18 := by sorry