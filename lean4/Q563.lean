import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
import Mathlib.Data.Real.Basic
import Mathlib.LinearAlgebra.FiniteDimensional.Defs 
import Mathlib.Geometry.Euclidean.Basic 
open Real EuclideanGeometry
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
theorem target_value_of_BD (A B C D E F G : PPoint) (x : ℝ)
    (h_AB : dist A B = 3)
    (h_BD : dist B D = x - 1)  
    (h_CE : dist C E = x + 2)  
    (h_EF : dist E F = 8)
    (h_x_gt_1 : x > 1)
    (h_ABC_right_angle : angle A B C = Real.pi / 2)
    (h_FED_right_angle : angle F E D = Real.pi / 2)
    (h_angle_eq : angle G A B = angle E F G)
    (h_angle_BAD_eq_BAG : angle B A D = angle B A G) 
    (h_angle_EFC_eq_EFG : angle E F C = angle E F G) 
    (h_angle_ABD_is_right : angle A B D = Real.pi / 2) 
    (h_angle_FEC_is_right : angle F E C = Real.pi / 2) 
    (h_triangle_ABD_not_collinear : ¬ Collinear ℝ ({A, B, D} : Set PPoint))
    (h_triangle_FEC_not_collinear : ¬ Collinear ℝ ({F, E, C} : Set PPoint))
    (h_angle_BDA_eq_CEF : angle B D A = angle C E F) 
    (h_angle_DAB_eq_EFC : angle D A B = angle E F C) 
    : dist B D = (9/5 : ℝ) := by sorry
