import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.LinearAlgebra.FiniteDimensional.Defs 
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic 
open Real EuclideanGeometry Affine AffineSubspace 
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
noncomputable def degreesToRadians (d : ℝ) : ℝ := d * (Real.pi / 180)
theorem find_angle_OFI (O F E D I : PPoint)
    (hO_ne_F : O ≠ F)
    (hF_ne_I : F ≠ I)
    (h_angle_FOE : EuclideanGeometry.angle F O E = degreesToRadians 118)
    (h_parallel_OD_FI : line[ℝ, O, D] ∥ line[ℝ, F, I])
    (h_O_between_D_E : Sbtw ℝ D O E)
    (hF_not_on_line_DE : F ∉ affineSpan ℝ ({D, E} : Set PPoint))
    (h_consecutive_interior_angles_supplementary :
      EuclideanGeometry.angle D O F + EuclideanGeometry.angle O F I = Real.pi) :
    EuclideanGeometry.angle O F I = degreesToRadians 118 := by
  sorry
