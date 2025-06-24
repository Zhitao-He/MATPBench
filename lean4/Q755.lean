import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open EuclideanGeometry
noncomputable def degToRad (d : ℝ) : ℝ := d / 180 * Real.pi
noncomputable def radToDeg (r : ℝ) : ℝ := r * 180 / Real.pi
abbrev P := EuclideanSpace ℝ (Fin 2)
theorem prove_value_of_arc_FDA
  (A D E F : P)
  (r : ℝ) (hr_pos : 0 < r)
  (hA_on_circ : A ∈ EuclideanGeometry.Sphere.mk F r)
  (hD_on_circ : D ∈ EuclideanGeometry.Sphere.mk F r)
  (hE_on_circ : E ∈ EuclideanGeometry.Sphere.mk F r)
  (hEFA_val : EuclideanGeometry.angle E F A = degToRad 63)
  (hDFE_val : EuclideanGeometry.angle D F E = degToRad 90)
  (hAngleAdd : EuclideanGeometry.angle D F A = EuclideanGeometry.angle D F E + EuclideanGeometry.angle E F A)
  : let measureArcFDAdeg := 360 - radToDeg (EuclideanGeometry.angle D F A)
    measureArcFDAdeg = 207 :=
by
  sorry
