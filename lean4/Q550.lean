import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
import Mathlib.Data.Real.Basic
import Mathlib.LinearAlgebra.FiniteDimensional.Defs 
open EuclideanGeometry Real
namespace ProblemFormalization
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
noncomputable def degToRad (degValue : ℝ) : ℝ := degValue * (Real.pi / 180)
theorem value_of_x (B C D E G : PPoint) (x : ℝ)
    (hB_ne_G : B ≠ G) (hC_ne_G : C ≠ G) (hD_ne_G : D ≠ G) (hE_ne_G : E ≠ G)
    (h_angle_BGE : angle B G E = degToRad x)
    (h_angle_CGD : angle C G D = degToRad 135)
    (h_angle_DGB : angle D G B = degToRad 145)
    (h_angle_EGC : angle E G C = degToRad x)
    (hx_pos : x > 0)
    (hx_lt_180 : x < 180)
    (h_sum_of_angles :
      angle B G E + angle E G C + angle C G D + angle D G B = 2 * Real.pi) :
    x = 40 := by
  sorry
end ProblemFormalization
