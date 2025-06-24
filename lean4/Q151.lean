import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
import Mathlib.Geometry.Euclidean.Basic 
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic 
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic 
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
section ThalesTheoremProblem
  variable (A B C O : P)
  variable (r : ℝ) (hr_pos : 0 < r)
  variable (hA : A ∈ Metric.sphere O r)
  variable (hB : B ∈ Metric.sphere O r)
  variable (hC : C ∈ Metric.sphere O r)
  variable (h_diam : O = midpoint ℝ A C)
  variable (hAB : A ≠ B) (hBC : B ≠ C)
  theorem angle_2_is_right_angle : EuclideanGeometry.angle A B C = Real.pi / 2 := by
    sorry
end ThalesTheoremProblem
