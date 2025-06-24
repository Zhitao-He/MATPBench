import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
open Real EuclideanGeometry
noncomputable def degToRad (d : ℝ) : ℝ := d * (π / 180)
abbrev P := EuclideanSpace ℝ (Fin 2)
theorem find_arc_measure
  (F G K M H J : P)
  (h_GK : dist G K = 14)                                
  (h_MF : dist M F = 8)                                 
  (h_FK : dist F K = 8)                                 
  (h_FG : dist F G = 8)                                 
  (h_angleFKG : EuclideanGeometry.angle F K G = degToRad 142)   
  (h_HJ_perp_KJ : EuclideanGeometry.angle H J K = degToRad 90)  
  : EuclideanGeometry.angle M F K = degToRad 109 := by
  sorry
