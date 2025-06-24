import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
theorem prove_sin_X_in_right_triangle_XYZ
    (X Y Z : P)
    (h_right_angle_at_Y : EuclideanGeometry.angle X Y Z = π / 2)
    (h_length_YX : dist Y X = 8)
    (h_length_XZ : dist X Z = 10) :
    Real.sin (EuclideanGeometry.angle Z X Y) = (3 / 5 : ℝ) :=
  by sorry
