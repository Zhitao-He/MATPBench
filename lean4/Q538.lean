import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
variable (A B C D F G : P)
noncomputable def degToRad (d : ℝ) : ℝ := d * Real.pi / 180
local notation "⟪" x ", " y "⟫" => inner ℝ x y
noncomputable def measureOfMinorArc (center point1 point2 : P) : ℝ :=
  Real.arccos ((⟪point1 -ᵥ center, point2 -ᵥ center⟫) / (‖point1 -ᵥ center‖ * ‖point2 -ᵥ center‖))
noncomputable def measureOfMajorArc (center point1 point2 : P) : ℝ :=
  2 * Real.pi - Real.arccos ((⟪point1 -ᵥ center, point2 -ᵥ center⟫) / (‖point1 -ᵥ center‖ * ‖point2 -ᵥ center‖))
variable (r : ℝ) (hr : r > 0)
variable (hA_on_circle : dist A B = r)
variable (hC_on_circle : dist C B = r)
variable (hD_on_circle : dist D B = r)
variable (hF_on_circle : dist F B = r)
variable (hG_on_circle : dist G B = r)
variable (h_CBG_collinear_diameter : Real.arccos ((⟪C -ᵥ B, G -ᵥ B⟫) / (‖C -ᵥ B‖ * ‖G -ᵥ B‖)) = Real.pi)
variable (h_ABF_collinear_diameter : Real.arccos ((⟪A -ᵥ B, F -ᵥ B⟫) / (‖A -ᵥ B‖ * ‖F -ᵥ B‖)) = Real.pi)
variable (h_angle_CBD : Real.arccos ((⟪C -ᵥ B, D -ᵥ B⟫) / (‖C -ᵥ B‖ * ‖D -ᵥ B‖)) = degToRad 55)
variable (h_angle_FBG : Real.arccos ((⟪F -ᵥ B, G -ᵥ B⟫) / (‖F -ᵥ B‖ * ‖G -ᵥ B‖)) = degToRad 35)
theorem measure_of_arc_BCD_is_305_degrees : measureOfMajorArc B C D = degToRad 305 := by
  sorry
