import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Pi.Bounds
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
set_option autoImplicit false
open Real EuclideanGeometry Angle
open scoped EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def degToRad (d : ℝ) : ℝ := d * (π / 180)
namespace ProblemGeoCircleArc
theorem measure_of_arc_DTU_is_46_degrees
  (U V T D : P)
  (C : Sphere P)
  (h_center_is_D : C.center = D)
  (hT_on_C : T ∈ C)
  (hU_on_C : U ∈ C)
  (hV_on_C : V ∈ C)
  (hD_ne_V : D ≠ V)
  (hU_ne_V : U ≠ V)
  (hT_ne_V : T ≠ V)
  (hD_ne_U : D ≠ U)
  (hD_ne_T : D ≠ T)
  (h_radius_pos : 0 < C.radius)
  (h_angle_UVT_value : ∠ U V T = degToRad 23) :
  ∠ T D U = degToRad 46 :=
by
  sorry
end ProblemGeoCircleArc
