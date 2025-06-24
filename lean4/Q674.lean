import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
noncomputable abbrev PPoint := EuclideanSpace ℝ (Fin 2)
noncomputable def degToRad (degrees : ℝ) : ℝ := degrees * (Real.pi / 180)
open EuclideanGeometry
theorem find_angle_GHF
  (A C D E F G H : PPoint)
  (hEHC : angle E H C = degToRad 35)
  (hGCH : angle G C H = degToRad 28)
  (hHDF : angle H D F = degToRad 25)
  (hHFG : angle H F G = degToRad 51)
  (hCE_perp_HE : angle C E H = Real.pi / 2)
  (hFG_perp_HG : angle F G H = Real.pi / 2)
  (hHC_perp_AC : angle H C A = Real.pi / 2)
  : angle G H F = degToRad 39 :=
by
  sorry
