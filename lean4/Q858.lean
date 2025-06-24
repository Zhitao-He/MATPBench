import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
open scoped EuclideanGeometry
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
variable (A B C F : P)
def diameterA : ℝ := 8
def diameterB : ℝ := 18
def diameterC : ℝ := 11
noncomputable def radiusA : ℝ := diameterA / 2
noncomputable def radiusB : ℝ := diameterB / 2
noncomputable def radiusC : ℝ := diameterC / 2
axiom hF_on_circleA : dist A F = radiusA
axiom h_collinear : Wbtw ℝ A F B
axiom h_dist_AB : dist A B = radiusB
theorem length_FB_eq_5 : dist F B = 5 := by
  sorry
