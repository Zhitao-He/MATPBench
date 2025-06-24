import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
import Mathlib.Data.Real.Basic
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic 
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Defs 
noncomputable def degToRad (d : ℝ) : ℝ := d * (Real.pi / 180)
namespace Problem
abbrev PPoint := EuclideanSpace ℝ (Fin 2) 
theorem target_angle_measure
    (A B C D E F : PPoint) 
    (h_EDF : EuclideanGeometry.angle E D F = degToRad 39)
    (h_FBA : EuclideanGeometry.angle F B A = degToRad 48)
    (h_FC_parallel_ED : AffineSubspace.Parallel (affineSpan ℝ ({F, C} : Set PPoint)) (affineSpan ℝ ({E, D} : Set PPoint))) 
    (h_AF_perp_BF : EuclideanGeometry.angle A F B = Real.pi / 2)
    (h_DC_perp_FC : EuclideanGeometry.angle D C F = Real.pi / 2)
    (h_FE_perp_DE : EuclideanGeometry.angle F E D = Real.pi / 2)
    (h_FDC_noncollinear : ¬ Collinear ℝ ({F, D, C} : Set PPoint))
    : EuclideanGeometry.angle F D C = degToRad 51 := by 
  sorry
end Problem
